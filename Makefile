define do_make
	test -f "$(1)/Makefile" && $(MAKE) -C "$(1)" $(2)
endef

all: 
	$(call do_make,english,all)
	$(call do_make,no_embeddedlogo,all)

clean: 
	$(call do_make,english,clean)
	$(call do_make,no_embeddedlogo,clean)

.PHONY: all clean


