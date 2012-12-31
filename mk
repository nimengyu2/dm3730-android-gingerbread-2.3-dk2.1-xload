#!/bin/sh

case "$1" in
    all)
        echo -n "Starting make $1"
        make CROSS_COMPILE=arm-eabi- distclean
	make CROSS_COMPILE=arm-eabi- omap3beagle_config
	make CROSS_COMPILE=arm-eabi-
	./signGP ./x-load.bin
	mv x-load.bin.ift MLO
        echo "."
        ;;
    *)
        echo "Usage: $0 {all}"
        exit 1
        ;;
esac

exit 0


#DAEMON=/usr/sbin/pcscd
#NAME=pcscd
#DESC="PCSC Daemon"
#PIDFILE=/var/run/pcscd/pcscd.pid
#ARGS=""
#test -f $DAEMON || exit 0
