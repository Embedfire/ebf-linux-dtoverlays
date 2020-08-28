#
# Peter Yang <turmary@126.com>
# Copyright (c) 2019 Seeed Studio
#
# MIT License
#

_tgt     := lis331dlh-i2c


# signal_pending compability
ifneq ($(wildcard $(_BUILD)/include/linux/sched/signal.h),)
ccflags-y += -DSCHED_SIGNAL_H=1
endif

lis331dlh-i2c-objs := lis3lv02d.o lis3lv02d_i2c.o
obj-m += ${_tgt}.o


