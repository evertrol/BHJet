CONFIG = make.config
include $(CONFIG)

$(info $(GSL))


#include Kariba/Makefile


.PHONY: all kariba examples bhjet tests clean distclean


all: kariba tests examples bhjet

kariba:
	$(MAKE) -C Kariba

examples: kariba
	$(MAKE) -C Examples

bhjet: kariba
	$(MAKE) -C BHJet

tests: kariba
	$(MAKE) -C tests

clean:
	$(MAKE) -C Kariba clean
	$(MAKE) -C Examples clean
	$(MAKE) -C BHJet clean
	$(MAKE) -C tests clean

distclean:
	$(MAKE) -C Kariba distclean
	$(MAKE) -C Examples distclean
	$(MAKE) -C BHJet distclean
	$(MAKE) -C tests distclean

help:
	@echo Possible targets
	@echo
	@echo "'make kariba': build the library"
	@echo "'make examples': build the examples"
	@echo "'make bhjet': build the BHJet model"
	@echo "'make all': build all of the three above. This is the default for just running 'make'"
	@echo
	@echo "'make clean': remove the intermediate (object) files for each target"
	@echo "'make distclean': remove the intermediate and final files for each target"
