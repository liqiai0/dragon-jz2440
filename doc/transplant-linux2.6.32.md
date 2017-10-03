#一.移植linux2.6.32 JZ2440 --李棋
##github:```https://github.com/liqiai0/dragon-jz2440```
###1.官网下载源码，解压
###2.修改makefile
在内核顶层中修改Makefile编译选项，
```
ARCH        ?= arm
CROSS_COMPILE   ?= /opt/arm-linux-gcc-3.4.5/bin/arm-linux-# your path
```
###3.编译与配置
```
make  s3c2410_defconfig
make uImage  -j4
```
配置:
```make menuconfig```
Å进入图形化配置界面
在配置菜单中选择这一项:“Load an Alternate Configuration File”
输入 2440 的默认配置文件:arch/arm/configs/s3c2410_defconfig
说明:这个文件就是 S3C24XX 系列开发板的板级支持包(BSP)
进入“System Type”选项单,里面的选项保持默认
在“S3C24XX Machine”选项中只配置这几项(其他的选项取消):
```
S3C2410 Machine --->
[\*] SMDK2410/A9M2410
S3C2440 Machine --->
[\*] SMDK2440
[\*] SMDK2440 with S3C2440 cpu moudle
```
配置完后,回到主菜单,选择这一项“Save an Alternate Configuration File”
输入要保存的配置文件名称:.config
###4.修改时钟
在arch/arm/mach-s3c2440/mach-smdk2440.c中，修改
```
static void __init smdk2440_map_io(void)
  {
      s3c24xx_init_io(smdk2440_iodesc, ARRAY_SIZE(smdk2440_iodesc));
  //  s3c24xx_init_clocks(16934400);
      s3c24xx_init_clocks(12000000);//修改为
      s3c24xx_init_uarts(smdk2440_uartcfgs, ARRAY_SIZE(smdk2440_uartcfgs));
  } 

```
###5.与uboot中机器码对应
与uboot中机器码对应，否则会出现
```
Uncompressing Linux.........................................................................
Error: unrecognized/unsupported machine ID (r1 = 0x0000016a).
```
内核中机器码位置在arch/arm/tools/mach-types中

###6.修改mtd分区表
arch/arm/plat-s3c24xx/common-smdk.c中，修改分区表
```
  static struct mtd_partition smdk_default_nand_part[] = { 
      [0] = { 
          .name   = "bootloader",
          .size   = 0x00040000,
          .offset = 0,
      }， 
      [1] = { 
          .name   = "params",
          .offset = MTDPART_OFS_APPEND,
          .size   = 0x00020000,
      }, 
      [2] = { 
          .name   = "kernel",
          .offset = MTDPART_OFS_APPEND,
          .size   = 0x00200000,
      }, 
      [3] = { 
          .name   = "root",
          .offset = MTDPART_OFS_APPEND,
          .size   = 0x02000000,
      }, 
      [4] = { 
          .name   = "system",
          .offset = MTDPART_OFS_APPEND,
          .size   = 0x00500000,
      }, 
      [5] = { 
          .name   = "app",
          .offset = MTDPART_OFS_APPEND,
          .size   = MTDPART_SIZ_FULL,
      } 
  };
```
###7.向内核中添加yaffs2
下载yaffs2的源码包，并将yaffs2打入内核中。
地址：```http://www.aleph1.co.uk/gitweb/?p=yaffs2.git;a=summary```
解压源码包，```tar -xvf  yaffs2-HEAD-c1422c2.tar.gz```
打入内核：```cd yaffs2-HEAD-c1422c2;./patch-ker.sh c m  ~/qli-worlk/dragon-jz2440/kernel/qli/linux-2.6.32.2```
内核配置yaffs2
```
File  systems  --->
    Miscellaneous  filesystems  --->
        <*>  YAFFS2  file  system  support
        [*]  Autoselect  yaffs2  format
```
#二.必要驱动
##1.网卡驱动dm9000
###1.添加dm9000平台设备
####(1).添加头文件
修改```arch/arm/plat-s3c24xx/common-smdk.c```添加包含头文件：
```
 #if defined (CONFIG_DM9000) || (CONFIG_DM9000_MODULE)
 #include <linux/dm9000.h> 
 s#endif

```
####(2).添加平台设备结构
修改```arch/arm/plat-s3c24xx/common-smdk.c```文件，添加：
```
  #if defined (CONFIG_DM9000) || (CONFIG_DM9000_MODULE)
  static struct resource s3c_dm9k_resource[] = {
      [0] = {
          .start = S3C2410_CS4, /* ADDrR2=0 */
          .end = S3C2410_CS4 + 3,
          .flags = IORESOURCE_MEM,
      },
      [1] = {
          .start = S3C2410_CS4 + 4,
          .end = S3C2410_CS4 + 4 + 4,
          .flags = IORESOURCE_MEM,
      },
      [2] = {
          .start = IRQ_EINT7, /* 中断号 */
          .end = IRQ_EINT7,
          .flags = IORESOURCE_IRQ|IORESOURCE_IRQ_HIGHEDGE,
      }
  };
  
  static struct dm9000_plat_data s3c_dm9k_platdata = {
      .flags = DM9000_PLATF_16BITONLY,
  };
  
  static struct platform_device s3c_device_dm9k = {
      .name = "dm9000",
      .id = 0,
      .num_resources = ARRAY_SIZE(s3c_dm9k_resource),
      .resource = s3c_dm9k_resource,
      .dev = {
          .platform_data = &s3c_dm9k_platdata,
      }
  };
  
  #endif

```
####(3).加入内核设备列表中
添加平台设备s3c_device_dm9k进入smdk_devs数组中，系统启动时，会将这个数组中的设备注册入内核
将：
```
  static struct platform_device __initdata *smdk_devs[] = {
      &s3c_device_nand,
      &smdk_led4,
      &smdk_led5,
      &smdk_led6,
      &smdk_led7,
  };

```
修改为：
```
  static struct platform_device __initdata *smdk_devs[] = {
      &s3c_device_nand,
      &smdk_led4,
      &smdk_led5,
      &smdk_led6,
      &smdk_led7,
  #if defined (CONFIG_DM9000) || defined (CONFIG_DM9000_MODULE)
      &s3c_device_dm9k,
  #endif
  };

```
###2.修改驱动程序
####(1).修改```drivers/net/dm9000.c```
添加头文件：
```
#if defined(CONFIG_ARCH_S3C2410)
#include <mach/regs-mem.h>
#endif
```
配置DM9000 所用片选总线的时序，在```static int __init dm9000_init(void)```函数中，添加：
```
#if defined(CONFIG_ARCH_S3C2410)
    unsigned int oldval_bwscon  =   *(volatile unsigned int *)S3C2410_BWSCON;
    unsigned int oldval_bankcon4    =   *(volatile unsigned int *)S3C2410_BANKCON4;
    *((volatile unsigned int*)S3C2410_BWSCON)    =    (oldval_bwscon&~(3<<16))|S3C2410_BWSCON_DW4_16|S3C2410_BWSCON_WS4|S3C2410_BWSCON_ST4;
    *((volatile unsigned int*)S3C2410_BANKCON4)  =   0x1f7c;
#endif
```
###3.添加mac地址
网卡并没有外接EEPROM 用以存储MAC 地址，因此系统中的MAC 地址是一个“软”地址，也就是可以通过软件进行修改，可以随意改为其他值，
在函数  ```static int __devinit   dm9000_probe(struct platform_device *pdev)```中尝试 
```
/* try reading the node address from the attached EEPROM */
      for (i = 0; i < 6; i += 2)
          dm9000_read_eeprom(db, i / 2, ndev->dev_addr+i);             
  }
```
使用b8:81:98:60:e6:ea作为mac地址，添加函数dm9000_probe中 ```memcpy(ndev->dev_addr, "\xb8\x81\x98\x60\xe6\xea", 6);```
```
      /*qli mac  */
      memcpy(ndev->dev_addr, "\xb8\x81\x98\x60\xe6\xea", 6);
      if (!is_valid_ether_addr(ndev->dev_addr))
          dev_warn(db->dev, "%s: Invalid ethernet MAC address. Please "
               "set using ifconfig\n", ndev->name);

```
###4.配置dm9000内核
配置内核加入DM9000，并编译运行测试此时会带内核源代码目录，开始在内核中配置网卡驱动，依次选择如下菜单项
```
Device Drivers --->
	[*]Network device support --->
		 Ethernet (10 or 100Mbit) --->
		 <*>DM9000  support
```







