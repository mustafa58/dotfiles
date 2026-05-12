# Set XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_RUNTIME_DIR=/run/user/$UID
# Xauthority file away from eyes
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
# Set ollama config
export OLLAMA_KEEP_ALIVE=-1
export OLLAMA_LOAD_TIMEOUT=$(( 50 * 60 ))
export OLLAMA_HOST=0.0.0.0
# python files
export PYTHON_HISTORY=$XDG_STATE_HOME/python_history
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python
# others
export HISTFILE=$XDG_STATE_HOME/bash/history
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
# Set GTK-2.0 & GTK-3.0 Theme
export GTK_THEME=Nordic
export QT_STYLE_OVERRIDE=Nordic
export GTK2_RC_FILES=/usr/share/themes/Nordic/gtk-2.0/gtkrc
export GDK6_SCALE=2
export GDK_DPI_SCALE=1.5
#export QT_AUTO_SCREEN_SCALE_FACTOR=0
#export QT_SCREEN_SCALE_FACTORS=2
#export QT_QPA_PLATFORMTHEME=qt5ct
# Set Vim as default Editor
export EDITOR=vim
#export MANPAGER="vim -R --cmd 'let no_plugin_maps = 1' -c 'runtime! macros/less.vim' -M +MANPAGER --not-a-term -"
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -l man -p'"
