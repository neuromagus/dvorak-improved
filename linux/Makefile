TARGETEN := /usr/share/X11/xkb/symbols/us
TARGETRU := /usr/share/X11/xkb/symbols/ru
SOURCE := inkl
SOURCERU := inklru

all: reinstall

install: $(SOURCE) $(SOURCERU) $(TARGETEN) $(TARGETRU)
	echo '//INKL//BEGIN' >> $(TARGETEN)
	cat $(SOURCE) >> $(TARGETEN)
	echo '//INKL//END' >> $(TARGETEN)
	echo '//INKLRU//BEGIN' >> $(TARGETRU)
	cat $(SOURCERU) >> $(TARGETRU)
	echo '//INKLRU//END' >> $(TARGETRU)

uninstall: $(TARGETEN) $(TARGETRU)
	sed -i '/^\/\/INKL\/\/BEGIN$$/,/^\/\/INKL\/\/END$$/d' $(TARGETEN)
	sed -i '/^\/\/INKLRU\/\/BEGIN$$/,/^\/\/INKLRU\/\/END$$/d' $(TARGETRU)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
