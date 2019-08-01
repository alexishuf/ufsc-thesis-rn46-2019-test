define do_make
	test -f "$(1)/Makefile" && $(MAKE) -C "$(1)" $(2)
endef

all: 
	$(call do_make,english,all)

clean: 
	$(call do_make,english,clean)

.PHONY: all clean


