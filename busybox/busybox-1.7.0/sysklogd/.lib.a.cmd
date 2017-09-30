cmd_sysklogd/lib.a := rm -f sysklogd/lib.a; /opt/arm-linux-gcc-3.4.5/bin/arm-linux-ar  rcs sysklogd/lib.a sysklogd/klogd.o sysklogd/logger.o sysklogd/logread.o sysklogd/syslogd.o
