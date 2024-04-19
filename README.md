# Dvorak keyboard layout with layers (DKLWL).


## Linux install:

run the following commands for install console map and Xorg/Wayland layout:
    
    git clone https://github.com/neuromagus/dklwl.git
    cd dklwl
    sudo make install

#### Activation for the VT console (add to /etc/vconsole.conf or similar):

    KEYMAP=dklwl

#### Activation for the X11:

    setxkbmap -layout us,yoursecondlanguage -variant dklwl,yourlayoutforsecondlanguage

or add in /etc/X11/xorg.conf.d/00-keyboard.conf:

    Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,yoursecondlanguage"
        Option "XkbModel" "pc104"
        Option "XkbVariant" "dklwl,yourlayoutforsecondlanguage"
        Option "XkbOptions" "grp:win_space_toggle"
    EndSection

#### Activation for the Sway or similar WM, based on Wlroots (add to ~/.config/sway/config):

    input "type:keyboard" {
        xkb_layout us,yoursecondlanguage
        xkb_variant dklwl,yourlayoutforsecondlanguage
        xkb_options grp:win_space_toggle
        repeat_delay 300
        repeat_rate 50
    }

#### Reinstall (whenever a system-wide XKB package upgrade reverts installation):

    sudo make reinstall

#### Uninstall:

    sudo make uninstall

Enjoy ;}
