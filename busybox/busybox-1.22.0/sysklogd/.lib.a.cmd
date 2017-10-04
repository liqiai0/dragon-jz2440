cmd_sysklogd/lib.a := rm -f sysklogd/lib.a; /opt/arm-linux-gcc-4.3.2/bin/arm-linux-ar  rcs sysklogd/lib.a sysklogd/klogd.o sysklogd/logread.o sysklogd/syslogd_and_logger.o
