cmd_libbb/perror_nomsg.o := /opt/arm-linux-gcc-4.3.2/bin/arm-linux-gcc -Wp,-MD,libbb/.perror_nomsg.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.22.0)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(perror_nomsg)"  -D"KBUILD_MODNAME=KBUILD_STR(perror_nomsg)" -c -o libbb/perror_nomsg.o libbb/perror_nomsg.c

deps_libbb/perror_nomsg.o := \
  libbb/perror_nomsg.c \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /opt/itop-arm/bin/../lib/gcc/arm-none-linux-gnueabi/4.4.1/include-fixed/limits.h \
  /opt/itop-arm/bin/../lib/gcc/arm-none-linux-gnueabi/4.4.1/include-fixed/syslimits.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/limits.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/features.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/predefs.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/cdefs.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/wordsize.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/gnu/stubs.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/posix1_lim.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/local_lim.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/linux/limits.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/posix2_lim.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/xopen_lim.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/stdio_lim.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/byteswap.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/byteswap.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/endian.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/endian.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/stdint.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/wchar.h \
  /opt/itop-arm/bin/../lib/gcc/arm-none-linux-gnueabi/4.4.1/include/stdbool.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/unistd.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/posix_opt.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/environments.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/types.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/typesizes.h \
  /opt/itop-arm/bin/../lib/gcc/arm-none-linux-gnueabi/4.4.1/include/stddef.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/confname.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/getopt.h \

libbb/perror_nomsg.o: $(deps_libbb/perror_nomsg.o)

$(deps_libbb/perror_nomsg.o):
