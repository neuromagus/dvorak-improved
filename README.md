# Dvorak improved (DIM)

### works best with ["Typewriter improved"](https://github.com/neuromagus/dvorak-improved/tree/main/linux/ru)
![Dvorak-improved](./images/dvorak-improved.png)

## Linux install:

run the following commands for install console map and Xorg/Wayland layout:
    
    git clone https://github.com/neuromagus/dvorak-improved.git
    cd dvorak-improved/linux
    sudo make install

#### Activation for the VT console (add to /etc/vconsole.conf or similar):

    KEYMAP=dvorak-improved

#### Activation for the X11:

    setxkbmap -layout us -variant dim
    or
    setxkbmap -layout us,yoursecondlanguage -variant dim,yourlayoutforsecondlanguage

or add in /etc/X11/xorg.conf.d/00-keyboard.conf:

    Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,yoursecondlanguage"
        Option "XkbModel" "pc104"
        Option "XkbVariant" "dim,yourlayoutforsecondlanguage"
        Option "XkbOptions" "grp:win_space_toggle"
    EndSection

#### Activation for the Sway or similar WM, based on Wlroots (add to ~/.config/sway/config):

    input "type:keyboard" {
        xkb_layout us,yoursecondlanguage
        xkb_variant dim,yourlayoutforsecondlanguage
        xkb_options grp:win_space_toggle
        repeat_delay 300
        repeat_rate 50
    }

#### Reinstall (whenever a system-wide XKB package upgrade reverts installation):

    sudo make reinstall

#### Uninstall:

    sudo make uninstall

Enjoy ;}
