# View
set --global theme_display_date yes
set --global theme_date_format "+%F %H:%M"
set --global theme_display_git_default_branch yes

set --export LESS       '--ignore-case --LONG-PROMPT --RAW-CONTROL-CHARS'
switch (uname --kernel-name)
case Linux
    set --export LESSOPEN   '| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'	# Mainly for WSL
case 'CYGWIN*' 'MINGW*' 'MSYS*'
    set --export LESSOPEN   '| /mingw64/bin/highlight --out-format=ansi %s'
case '*'
    echo "Unknown OS: "(uname --kernel-name)
end

set --export VISUAL     'vim'
set --export CDPATH     $HOME/.config/

set --universal fish_greeting   # Unset greeting from fish shell.

# Run `ssh-agent` on start-up in order to omit passphrase input.
# But turned out that this variable is not set even though a process is already running.
#if test -z $SSH_AGENT_PID
#    eval (ssh-agent -c)
#end

# Abbreviations
set ABBREVIATIONS $HOME/.config/fish/abbreviation.fish
if test -e "$ABBREVIATIONS"
    source $ABBREVIATIONS
end

# fish shell automatically adds `~/.local/bin` to PATH but it doesn't work on login shell..
# fish/conf.d/ files are run on login shell but still it's not added, though...
if not contains "$HOME/.local/bin" $PATH
    set --export PATH $HOME/.local/bin $PATH
end

