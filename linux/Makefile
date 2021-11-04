TARGET := /usr/share/X11/xkb/symbols/us
SOURCE := inkl

all: reinstall

install: $(SOURCE) $(TARGET)
	echo '//INKL//BEGIN' >> $(TARGET)
	cat $(SOURCE) >> $(TARGET)
	echo '//INKL//END' >> $(TARGET)

uninstall: $(TARGET)
	sed -i '/^\/\/INKL\/\/BEGIN$$/,/^\/\/INKL\/\/END$$/d' $<

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
