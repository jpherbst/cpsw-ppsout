obj-m += ti_cpsw_ppsout.o
ti_cpsw_ppsout-y := cpsw.o cpts.o cpts_pin.o

SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) V=1 EXTRA_CFLAGS="-I$(KERNEL_SRC)" modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
