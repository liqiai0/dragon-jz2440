#移植linux2.6.32 JZ2440 --李棋
##github:```https://github.com/liqiai0/dragon-jz2440```
###1.官网下载源码，解压
###2.修改makefile
在内核顶层中修改编译选项，
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
4S3C2410 Machine --->
[\*] SMDK2410/A9M2410
S3C2440 Machine --->
[\*] SMDK2440
[\*] SMDK2440 with S3C2440 cpu moudle
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

