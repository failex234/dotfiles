#rm () {
#mv -vf $* /home/cmason37/.local/share/Trash/files/
#}

clonepkg () {
cd /tmp/ && git clone https://aur.archlinux.org/$*.git && cd $*
}



export XDG_CONFIG_HOME=$HOME/.config

export XDG_CACHE_HOME=$HOME/.cache

export XDG_DATA_HOME=$HOME/.local/share

export XDG_DATA_DIRS=/usr/local/share:/usr/share

export XDG_CONFIG_DIRS=/etc/xdg

export QT_QPA_PLATFORMTHEME=qt5ct

export VISUAL="kate"

export AURDEST=/tmp/

export EDITOR="vim"

export DEFAULT_USER="felix"

alias winetricks='cp -Rv ~/.winecache/* ~/.cache/. && winetricks -q' 

alias uptime="uptime -p"

alias winecfg="rm -v ~/.wine/.UNCONFIGURED; rm -v $WINEPREFIX/.UNCONFIGURED; /usr/bin/winecfg"

source $HOME/.zshrc
