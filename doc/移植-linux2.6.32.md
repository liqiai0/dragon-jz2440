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

###6.修改mtd分区表与添加mtd驱动
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


