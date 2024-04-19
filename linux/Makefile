.DEFAULT_GOAL := all

SOURCE_FILE_1 := console/dvorak-improved.map.gz
DEST_DIR_1 := /usr/share/kbd/keymaps/i386/dvorak
DEST_FILE_1 := $(DEST_DIR_1)/$(notdir $(SOURCE_FILE_1))

COPY_CMD_1 := cp $(SOURCE_FILE_1) $(DEST_DIR_1)
RM_CMD_1 := rm -f $(DEST_FILE_1)

TARGET_2 := /usr/share/X11/xkb/symbols/us
SOURCE_2 := en/dim


all: reinstall_1 reinstall_2

install_1:
	@echo "Copying $(notdir $(SOURCE_FILE_1)) to $(DEST_DIR_1)"
	$(COPY_CMD_1)

uninstall_1:
	@echo "Removing $(DEST_FILE_1)"
	$(RM_CMD_1)

install_2: $(SOURCE_2) $(TARGET_2)
	echo '//DIM//BEGIN' >> $(TARGET_2)
	cat $(SOURCE_2) >> $(TARGET_2)
	echo '//DIM//END' >> $(TARGET_2)

uninstall_2: $(TARGET_2)
	sed -i '/^\/\/DIM\/\/BEGIN$$/,/^\/\/DIM\/\/END$$/d' $(TARGET_2)

reinstall_1:
	$(MAKE) uninstall_1
	$(MAKE) install_1

reinstall_2:
	$(MAKE) uninstall_2
	$(MAKE) install_2

install: install_1 install_2
uninstall: uninstall_1 uninstall_2

.PHONY: all install_1 uninstall_1 reinstall_1 install_2 uninstall_2 reinstall_2 

