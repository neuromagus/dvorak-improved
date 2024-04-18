.DEFAULT_GOAL := all

# Первый набор инструкций
SOURCE_FILE_1 := linux/console/dklwl.map
DEST_DIR_1 := /usr/share/kbd/keymaps/i386/dvorak/
DEST_FILE_1 := $(DEST_DIR_1)/$(notdir $(SOURCE_FILE_1))

COPY_CMD_1 := cp $(SOURCE_FILE_1) $(DEST_DIR_1)
RM_CMD_1 := rm -f $(DEST_FILE_1)

# Второй набор инструкций
TARGET_2 := /usr/share/X11/xkb/symbols/us
SOURCE_2 := linux/en/dklwl

# Третий набор инструкций
TARGET_3 := /usr/share/X11/xkb/symbols/ru
SOURCE_3 := linux/ru/dklwlru

all: reinstall_1 reinstall_2 reinstall_3

# Правила для первого набора
install_1:
	@echo "Copying $(notdir $(SOURCE_FILE_1)) to $(DEST_DIR_1)"
	$(COPY_CMD_1)

uninstall_1:
	@echo "Removing $(DEST_FILE_1)"
	$(RM_CMD_1)

# Правила для второго набора
install_2: $(SOURCE_2) $(TARGET_2)
	echo '//DKLWL//BEGIN' >> $(TARGET_2)
	cat $(SOURCE_2) >> $(TARGET_2)
	echo '//DKLWL//END' >> $(TARGET_2)

uninstall_2: $(TARGET_2)
	sed -i '/^\/\/DKLWL\/\/BEGIN$$/,/^\/\/DKLWL\/\/END$$/d' $(TARGET_2)

# Правила для третьего набора
install_3: $(SOURCE_3) $(TARGET_3)
	echo '//DKLWLRU//BEGIN' >> $(TARGET_3)
	cat $(SOURCE_3) >> $(TARGET_3)
	echo '//DKLWLRU//END' >> $(TARGET_3)

uninstall_3: $(TARGET_3)
	sed -i '/^\/\/DKLWLRU\/\/BEGIN$$/,/^\/\/DKLWLRU\/\/END$$/d' $(TARGET_3)

# Цель для переустановки всех трех наборов
reinstall_1:
	$(MAKE) uninstall_1
	$(MAKE) install_1

reinstall_2:
	$(MAKE) uninstall_2
	$(MAKE) install_2

reinstall_3:
	$(MAKE) uninstall_3
	$(MAKE) install_3

install: install_1 install_2 install_3
uninstall: uninstall_1 uninstall_2 uninstall_3

.PHONY: all install_1 uninstall_1 reinstall_1 install_2 uninstall_2 reinstall_2 install_3 uninstall_3 reinstall_3

