.DEFAULT_GOAL := all

SOURCE_FILE := dklwl.map
DEST_DIR := /usr/share/kbd/keymaps/i386/dvorak/
DEST_FILE := $(DEST_DIR)/$(SOURCE_FILE)

COPY_CMD := cp $(SOURCE_FILE) $(DEST_DIR)
RM_CMD := rm -f $(DEST_FILE)

all:
	@echo "Usage: make install | make uninstall"

install:
	@echo "Copying $(SOURCE_FILE) to $(DEST_DIR)"
	$(COPY_CMD)

uninstall:
	@echo "Removing $(DEST_FILE)"
	$(RM_CMD)

