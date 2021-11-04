TARGET := /usr/share/X11/xkb/symbols/us
TARGET1 := /usr/share/X11/xkb/keycodes/evdev
SOURCE := inkl

all: reinstall

install: $(SOURCE) $(TARGET) $(TARGET1)
	echo '//INKL//BEGIN' >> $(TARGET)
	cat $(SOURCE) >> $(TARGET)
	echo '//INKL//END' >> $(TARGET)
	sed -i 's/<PRSC>.*/<PRSC> = 134;/' $(TARGET1)

uninstall: $(TARGET) $(TARGET1)
	sed -i '/^\/\/INKL\/\/BEGIN$$/,/^\/\/INKL\/\/END$$/d' $<
	sed -i 's/<PRSC>.*/<PRSC> = 107;/' $(TARGET1)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
