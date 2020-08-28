


_BUILD ?= /home/embedfire/test/ebf-buster-linux



tmp_build_dir=$(filter-out Makefile ,$(shell ls -F))

#/home/embedfire/test/ebf-linux-dtoverlays/modules/gt9xx/
 
build_file := $(foreach dir, $(tmp_build_dir), $(wildcard $(dir)Makefile))

build_dir = $(patsubst %/Makefile, %, $(build_file))
install_dir = $(foreach dir, $(tmp_build_dir), $(wildcard $(dir)*.ko))
include $(build_file)
#/home/embedfire/test/ebf-linux-dtoverlays/modules/gt9xx/Makefile

all:module
module:
	for _build_dir in $(build_dir); do \
		make -C $(_BUILD) M=$(shell pwd)/$$_build_dir modules \
		#echo $$_build_dir \
		#make -C $(_BUILD) M=/home/embedfire/test/ebf-linux-dtoverlays/modules/gt9xx/ modules \
	done \
#modules
#modules clean:
#	$(MAKE) -C $(_BUILD) M=$(shell pwd)/gt9xx/ $@
clean:
	for _build_dir in $(build_dir); do \
		make -C $(_BUILD) M=$(shell pwd)/$$_build_dir clean \
		#echo $$_build_dir \
		#make -C $(_BUILD) M=/home/embedfire/test/ebf-linux-dtoverlays/modules/gt9xx/ clean \
	done \

install:
	-mkdir __install_dir; \
	for _install_file in $(install_dir); do \
		cp $$_install_file __install_dir \
		#  \
		# \
	done \
	mv __install_dir .. 

check:
	@echo $(install_dir)
