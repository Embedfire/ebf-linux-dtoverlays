#
# Peter Yang <turmary@126.com>
# Copyright (c) 2019 Seeed Studio
#
# MIT License
#

_tgt     := vl53l0x

_uname_r := $(shell uname -r)
_BUILD   := /lib/modules/$(_uname_r)/build
_PWD     := $(shell pwd)
_DEPMOD  ?= depmod -a

# If KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language
ifneq ($(KERNELRELEASE),)

# signal_pending compability
ifneq ($(wildcard $(_BUILD)/include/linux/sched/signal.h),)
ccflags-y += -DSCHED_SIGNAL_H=1
endif

obj-m += ${_tgt}.o

else
_class  := drivers/misc

DEST  := /lib/modules/$(_uname_r)/kernel

all:
	make -C ${_BUILD} M=$(_PWD) modules

clean:
	make -C ${_BUILD} M=$(_PWD) clean

install:
	cp ${_tgt}.ko ${DEST}/${_class}/
	$(_DEPMOD)

uninstall:
	rm -f ${DEST}/${_class}/${_tgt}.ko
	$(_DEPMOD)

.PHONY: all clean install uninstall
endif
