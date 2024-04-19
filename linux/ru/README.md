# Russian keyboard layout "Typewriters" with layer (dklwlru)


## Linux

Install:

    cd dklwl/linux/ru
    sudo make install

##### Activation in Xorg:

    setxkbmap -layout en,ru -variant ,dklwlru

or add in /etc/X11/xorg.conf.d/00-keyboard.conf:

    Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,ru"
        Option "XkbModel" "pc104"
        Option "XkbVariant" "dklwl,dklwlru"
        Option "XkbOptions" "grp:win_space_toggle"
    EndSection

#### Activation in the Sway or similar WM, based on Wlroots (add to ~/.config/sway/config):
 
    input "type:keyboard" {
        xkb_layout us,ru
        xkb_variant dklwl,dklwlru
        xkb_options grp:win_space_toggle
        repeat_delay 300
        repeat_rate 50
    }

#### Reinstall (whenever a system-wide XKB package upgrade reverts installation):

    sudo make reinstall

#### Uninstall:

    sudo make uninstall
