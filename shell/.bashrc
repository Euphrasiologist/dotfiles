# Set vi mode
set -o vi

# Set $PATH
export PATH=$HOME/bin:\
/usr/local/sbin:\
/usr/local/opt/coreutils/libexec/gnubin:\
/usr/local/opt/grep/libexec/gnubin:\
/usr/local/opt/gnu-sed/libexec/gnubin:\
/usr/local/opt/gawk/libexec/gnubin:\
/usr/local/opt/inetutils/libexec/gnubin:\
/usr/local/opt/ruby/bin:\
/Users/johngodlee/.gem/ruby/2.7.0/bin:\
${PATH}

# Set #MANPATH
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:\
/usr/local/opt/grep/libexec/gnuman:\
/usr/local/opt/gnu-sed/libexec/gnuman:\
/usr/local/opt/gawk/libexec/gnuman:\
/usr/local/opt/inetutils/libexec/gnuman:\
${MANPATH}"

export LANG=en_US.UTF-8

# History file format
shopt -s histappend
HISTSIZE=100000
HISTFILESIZE=100000
HISTTIMEFORMAT="%Y_%m_%d - %H:%M:%S [%Z]"
export HISTCONTROL=ignoreboth

# source script to have git branch in prompt
source ~/bin/git-prompt.sh

# Options for git-prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_STATESEPARATOR=" "

# virtualenv prompt
check_virtual_env ()
{
    if test -z "$VIRTUAL_ENV"
    then
        printf -- "%s" ""
    else
        printf -- "%s" "(${VIRTUAL_ENV##*/})"
    fi
}

## Disable default prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Bash prompt
PS1=''
PS1+='\[\e[96m\]$(check_virtual_env)\[\e[m\]' 	# virtualenv
PS1+='[\T]'	# Time
PS1+=' '	# Space 
PS1+='\u@\h'	# User@hostname
PS1+=' ' 	# Space
PS1+='\[\e[31m\]\w\[\e[m\]'	# current dir
PS1+=' '	# Space
PS1+='\[\e[96m\]$(__git_ps1 "[%s]")\[\e[m\]'	# git branch
PS1+='\n'	# New line
PS1+=' $'	# $
PS1+=' '	# Space

# Source completion scripts
source $HOME/bin/jump_completion

# Alias cd 
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Check if file already exists on copy
alias cp='cp -i'

# Alias `ls -G` as `ls` to force colours in `ls`
alias ls="'gls' -A -F -G -g -h -l --group-directories-first --color"

# ls by time modified
alias lst="'gls' -A -F -G -g -h -l -t -r --group-directories-first --color"

# Configure default env. vars for lynx
export LYNX_CFG=~/.lynx/lynx.cfg
export LYNX_LSS=~/.lynx/lynx.lss 

# Open (neo)mutt in Downloads to save attachments there,
# always run notmuch build before opening
alias mutt='neomutt'

# Use VLC ncurses in the terminal
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC -I ncurses --no-color"

# Source bookmarks functions
source $HOME/bin/marks

# Use gpg key as default
export GPGKEY=E2388D6F0290C660224F6439215C0880610719F7

# Use Neovim as default $EDITOR
export EDITOR=nvim

# Set location of proj.db to stop errors in R {rgdal}
export PROJ_LIB=/usr/local/Cellar/proj/7.0.1/share/proj

# alias vim
alias v=nvim
alias vim=nvim

# Use less as pager
export PAGER=less

# Git aliases
alias gall="git add -A; git commit"
alias gp="git pull; git push"

# Autocompletions
eval "$(gh completion -s bash)"
eval "$(pipenv --completion)"

# Open todo file
alias todo="nvim $HOME/google_drive/notes/todo.md"

# Define path to bookmarks file
export MARKPATH=$HOME/.marks

# Alias bookmarks for marks
alias bookmarks='marks'

# Some installers require CPython built with --enable-framework
export PYTHON_CONFIGURE_OPTS="--enable-framework"

# Disable macOS Catalina zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# FZF completion etc.
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=34:ow=34:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

export PATH="$HOME/.cargo/bin:$PATH"


