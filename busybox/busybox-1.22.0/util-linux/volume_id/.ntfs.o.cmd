cmd_util-linux/volume_id/ntfs.o := /opt/arm-linux-gcc-4.3.2/bin/arm-linux-gcc -Wp,-MD,util-linux/volume_id/.ntfs.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.22.0)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(ntfs)"  -D"KBUILD_MODNAME=KBUILD_STR(ntfs)" -c -o util-linux/volume_id/ntfs.o util-linux/volume_id/ntfs.c

deps_util-linux/volume_id/ntfs.o := \
  util-linux/volume_id/ntfs.c \
    $(wildcard include/config/feature/volumeid/ntfs.h) \
    $(wildcard include/config/feature/blkid/type.h) \
  util-linux/volume_id/volume_id_internal.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
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
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/ctype.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/xlocale.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/dirent.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/dirent.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/errno.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/errno.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/linux/errno.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/errno.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm-generic/errno.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm-generic/errno-base.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/fcntl.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/fcntl.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/types.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/time.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/select.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/select.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sigset.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/time.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/sysmacros.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/pthreadtypes.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/uio.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/stat.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/stat.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/inttypes.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/netdb.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/netinet/in.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/socket.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/uio.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/socket.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sockaddr.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/socket.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/sockios.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/in.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/rpc/netdb.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/siginfo.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/netdb.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/setjmp.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/setjmp.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/signal.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/signum.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sigaction.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sigcontext.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/sigcontext.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sigstack.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/ucontext.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/procfs.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/time.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/user.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sigthread.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/stdio.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/libio.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/_G_config.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/wchar.h \
  /opt/itop-arm/bin/../lib/gcc/arm-none-linux-gnueabi/4.4.1/include/stdarg.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/sys_errlist.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/stdlib.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/waitflags.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/waitstatus.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/alloca.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/string.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/libgen.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/poll.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/poll.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/poll.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/ioctl.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/ioctls.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/ioctls.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/ioctl.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm-generic/ioctl.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/ioctl-types.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/ttydefaults.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/mman.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/mman.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/wait.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/resource.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/resource.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/termios.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/termios.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/param.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/linux/param.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/asm/param.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/pwd.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/grp.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/mntent.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/paths.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/sys/statfs.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/statfs.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/utmp.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/bits/utmp.h \
  /opt/itop-arm/bin/../arm-none-linux-gnueabi/libc/usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \
  include/volume_id.h \

util-linux/volume_id/ntfs.o: $(deps_util-linux/volume_id/ntfs.o)

$(deps_util-linux/volume_id/ntfs.o):
