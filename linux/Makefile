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
	sed -i 's/<PRSC>.*/<PRSC> = 134;/' $(TARGETCODE)
	echo '//INKLRU//BEGIN' >> $(TARGETRU)
	cat $(SOURCERU) >> $(TARGETRU)
	echo '//INKLRU//END' >> $(TARGETRU)

uninstall: $(TARGETEN) $(TARGETCODE) $(TARGETRU)
	sed -i '/^\/\/INKL\/\/BEGIN$$/,/^\/\/INKL\/\/END$$/d' $(TARGETEN)
	sed -i 's/<PRSC>.*/<PRSC> = 107;/' $(TARGETCODE)
	sed -i '/^\/\/INKLRU\/\/BEGIN$$/,/^\/\/INKLRU\/\/END$$/d' $(TARGETRU)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
