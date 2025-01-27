MODULES := modules/helloWorld

KDIR := /lib/modules/$(shell uname -r)/build

.PHONY: all clean

all:
	@for module in $(MODULES); do \
		echo "Building module in $$module..."; \
		$(MAKE) -C $(KDIR) M=$$module modules; \
	done

clean:
	@for module in $(MODULES); do \
		echo "Cleaning module in $$module..."; \
		$(MAKE) -C $(KDIR) M=$$module clean; \
	done
