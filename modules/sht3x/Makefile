#
# Peter Yang <turmary@126.com>
# Copyright (c) 2019 Seeed Studio
#
# MIT License
#

_tgt     := sht3x


ifneq ($(wildcard $(_BUILD)/include/linux/sched/signal.h),)
ccflags-y += -DSCHED_SIGNAL_H=1
endif

obj-m += ${_tgt}.o

