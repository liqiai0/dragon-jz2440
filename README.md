# dragon-jz2440

##1.分区
```
static struct mtd_partition smdk_default_nand_part[] = { 
	 [0] = { 
          .name   = "bootloader",
          .size   = 0x00040000,
          .offset = 0,
      },  
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
uboot  　　　　　　0x------0x40000 　　　　　　 　　　　256k
param　　　　 　　0x-----0x60000 　　　　　　 　　　　  128k
kernel　　　　　　0x60000-------0x260000 　　　　　　 　2m
rootfs 　　　　　　0x260000--------0x2260000 　　　　　   32m
system　　　　　  0x2260000-------0x2760000 　　　　　　2m
app
##2.内核移植





