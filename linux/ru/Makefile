TARGET := /usr/share/X11/xkb/symbols/ru
SOURCE := dklwlru

all: reinstall

install: $(SOURCE) $(TARGET)
	echo '//DKLWLRU//BEGIN' >> $(TARGET)
	cat $(SOURCE) >> $(TARGET)
	echo '//DKLWLRU//END' >> $(TARGET)

uninstall: $(TARGET)
	sed -i '/^\/\/DKLWLRU\/\/BEGIN$$/,/^\/\/DKLWLRU\/\/END$$/d' $(TARGET)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
