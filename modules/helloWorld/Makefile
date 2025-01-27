PWD := $(CURDIR)

obj-m += hello.o

all:
	# TAB is required here
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	# TAB is required here
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
