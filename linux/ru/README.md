# Russian Typewriter improved (RUTIM)

### works best with ["Dvorak improved"](https://github.com/neuromagus/dvorak-improved)
![typewriter-improved](../../images/ru-typewriter-improved.png)

## Windows install:

Download [windows/ru/rutim.zip](https://github.com/neuromagus/dvorak-improved/blob/main/windows/ru/RUTIM.zip), extract, run installer ```RUTIM_amd64.msi``` for 64bit or ```RUTIM_i386.msi``` for 32bit Windows.  
Next, download and install latest version of [Sharpkeys](https://github.com/randyrants/sharpkeys/releases)  
After installation open the Sharpkeys tool, press the ```Load keys``` menu and choose the file
```DIM-modificators-sharpkeys.skl``` in the extracted RUTIM folder.
Next, press the ```Write to Registry``` menu, close Sharpkeys and LOG OUT!

Well done, open the keyboard config and set the ```Dvorak improved``` as the default.

Enjoy ;}

## Linux install:

    git clone https://github.com/neuromagus/dvorak-improved.git
    cd dvorak-improved/linux/ru
    sudo make install

#### Activation for the Xorg:

    setxkbmap -layout en,ru -variant dim,rutim

or add in /etc/X11/xorg.conf.d/00-keyboard.conf:

    Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,ru"
        Option "XkbModel" "pc104"
        Option "XkbVariant" "dim,rutim"
        Option "XkbOptions" "grp:win_space_toggle"
    EndSection

#### Activation for the Sway or similar WM, based on Wlroots (add to ~/.config/sway/config):
 
    input "type:keyboard" {
        xkb_layout us,ru
        xkb_variant dim,rutim
        xkb_options grp:win_space_toggle
        repeat_delay 300
        repeat_rate 50
    }

#### Reinstall (whenever a system-wide XKB package upgrade reverts installation):

    sudo make reinstall

#### Uninstall:

    sudo make uninstall

Enjoy ;}
