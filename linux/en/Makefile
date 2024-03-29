TARGET := /usr/share/X11/xkb/symbols/us
SOURCE := dklwl

all: reinstall

install: $(SOURCE) $(TARGET)
	echo '//DKLWL//BEGIN' >> $(TARGET)
	cat $(SOURCE) >> $(TARGET)
	echo '//DKLWL//END' >> $(TARGET)


uninstall: $(TARGET)
	sed -i '/^\/\/DKLWL\/\/BEGIN$$/,/^\/\/DKLWL\/\/END$$/d' $(TARGET)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
