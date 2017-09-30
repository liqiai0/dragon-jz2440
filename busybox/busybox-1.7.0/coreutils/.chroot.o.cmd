cmd_coreutils/chroot.o := /opt/arm-linux-gcc-3.4.5/bin/arm-linux-gcc -Wp,-MD,coreutils/.chroot.o.d   -std=gnu99 -Iinclude -Ilibbb  -I/home/liqi/qli-worlk/JZ2440/busybox/busybox-1.7.0/libbb -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.7.0)" -DBB_BT=AUTOCONF_TIMESTAMP -D_FORTIFY_SOURCE=2  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes  -Wmissing-prototypes -Wmissing-declarations -Os -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -Wdeclaration-after-statement     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(chroot)"  -D"KBUILD_MODNAME=KBUILD_STR(chroot)" -c -o coreutils/chroot.o coreutils/chroot.c

deps_coreutils/chroot.o := \
  coreutils/chroot.c \
  include/libbb.h \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/buffer.h) \
    $(wildcard include/config/ubuffer.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/ture/ipv6.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/busybox/exec/path.h) \
    $(wildcard include/config/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/gunzip.h) \
    $(wildcard include/config/ktop.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/ture/editing/savehistory.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/inux.h) \
    $(wildcard include/config/feature/devfs.h) \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config///.h) \
    $(wildcard include/config//nommu.h) \
    $(wildcard include/config//mmu.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/byteswap.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/byteswap.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/endian.h \
    $(wildcard include/config/.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/features.h \
    $(wildcard include/config/c99.h) \
    $(wildcard include/config/ix.h) \
    $(wildcard include/config/ix2.h) \
    $(wildcard include/config/ix199309.h) \
    $(wildcard include/config/ix199506.h) \
    $(wildcard include/config/en.h) \
    $(wildcard include/config/en/extended.h) \
    $(wildcard include/config/x98.h) \
    $(wildcard include/config/en2k.h) \
    $(wildcard include/config/gefile.h) \
    $(wildcard include/config/gefile64.h) \
    $(wildcard include/config/e/offset64.h) \
    $(wildcard include/config/d.h) \
    $(wildcard include/config/c.h) \
    $(wildcard include/config/ntrant.h) \
    $(wildcard include/config/tify/level.h) \
    $(wildcard include/config/i.h) \
    $(wildcard include/config/ern/inlines.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/cdefs.h \
    $(wildcard include/config/espaces.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/gnu/stubs.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/endian.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/arpa/inet.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/netinet/in.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/stdint.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/wchar.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/wordsize.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/socket.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/uio.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/types.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/types.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/include/stddef.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/typesizes.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/time.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/select.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/select.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sigset.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/time.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/sysmacros.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/pthreadtypes.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sched.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/uio.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/socket.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/include/limits.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/include/syslimits.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/limits.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/posix1_lim.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/local_lim.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/linux/limits.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/posix2_lim.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/xopen_lim.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/stdio_lim.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sockaddr.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/socket.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/sockios.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/in.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/include/stdbool.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/mount.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/ioctl.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/ioctls.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/ioctls.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/ioctl.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/ioctl-types.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/ttydefaults.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/ctype.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/xlocale.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/dirent.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/dirent.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/errno.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/errno.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/linux/errno.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/errno.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/fcntl.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/fcntl.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/stat.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/stat.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/inttypes.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/mntent.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/stdio.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/paths.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/netdb.h \
    $(wildcard include/config/3/ascii/rules.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/rpc/netdb.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/siginfo.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/netdb.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/setjmp.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/setjmp.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/signal.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/signum.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sigaction.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sigcontext.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/sigcontext.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sigstack.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/ucontext.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/procfs.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/time.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/user.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sigthread.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/libio.h \
    $(wildcard include/config/a.h) \
    $(wildcard include/config/ar/t.h) \
    $(wildcard include/config//io/file.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/_G_config.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/wchar.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/gconv.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/include/stdarg.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/sys_errlist.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/stdlib.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/waitflags.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/waitstatus.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/alloca.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/string.h \
    $(wildcard include/config/ing/inlines.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/mman.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/mman.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/statfs.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/statfs.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/wait.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/resource.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/resource.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/termios.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/termios.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/unistd.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/posix_opt.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/environments.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/confname.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/getopt.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/utime.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/locale.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/bits/locale.h \
  include/pwd_.h \
    $(wildcard include/config/use/bb/pwd/grp.h) \
  include/grp_.h \
  include/shadow_.h \
    $(wildcard include/config/use/bb/shadow.h) \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/sys/param.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/linux/param.h \
  /opt/arm-linux-gcc-3.4.5/bin/../lib/gcc/arm-linux/3.4.5/../../../../arm-linux/sys-include/asm/param.h \
  include/xatonum.h \

coreutils/chroot.o: $(deps_coreutils/chroot.o)

$(deps_coreutils/chroot.o):
