TARGETEN := /usr/share/X11/xkb/symbols/us
TARGETRU := /usr/share/X11/xkb/symbols/ru
TARGETCODE := /usr/share/X11/xkb/keycodes/evdev
SOURCE := inkl
SOURCERU := inklru

all: reinstall

install: $(SOURCE) $(TARGETEN) $(TARGETCODE) $(SOURCERU) $(TARGETRU)
	echo '//INKL//BEGIN' >> $(TARGETEN)
	cat $(SOURCE) >> $(TARGETEN)
	echo '//INKL//END' >> $(TARGETEN)
	echo '//INKLFIX//BEGIN' >> $(TARGETCODE)
	echo 'alias <PRSC> = <RWIN>;' >> $(TARGETCODE)
	echo '//INKLFIX//END' >> $(TARGETCODE)
	echo '//INKLRU//BEGIN' >> $(TARGETRU)
	cat $(SOURCERU) >> $(TARGETRU)
	echo '//INKLRU//END' >> $(TARGETRU)

uninstall: $(TARGETEN) $(TARGETCODE) $(TARGETRU)
	sed -i '/^\/\/INKL\/\/BEGIN$$/,/^\/\/INKL\/\/END$$/d' $(TARGETEN)
	sed -i '/^\/\/INKLFIX\/\/BEGIN$$/,/^\/\/INKLFIX\/\/END$$/d' $(TARGETCODE)
	sed -i '/^\/\/INKLRU\/\/BEGIN$$/,/^\/\/INKLRU\/\/END$$/d' $(TARGETRU)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
