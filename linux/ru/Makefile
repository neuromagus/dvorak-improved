TARGET := /usr/share/X11/xkb/symbols/ru
SOURCE := rutim

all: reinstall

install: $(SOURCE) $(TARGET)
	echo '//RUTIM//BEGIN' >> $(TARGET)
	cat $(SOURCE) >> $(TARGET)
	echo '//RUTIM//END' >> $(TARGET)

uninstall: $(TARGET)
	sed -i '/^\/\/RUTIM\/\/BEGIN$$/,/^\/\/RUTIM\/\/END$$/d' $(TARGET)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
