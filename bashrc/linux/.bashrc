export TERM=xterm-color
#export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_ORANGE='\033[1;33m'

case $TERM in
     xterm*|rxvt*)
         TITLEBAR='\[\033]0;\u ${NEW_PWD}\007\]'
          ;;
     *)
         TITLEBAR=""
          ;;
    esac

UC=$COLOR_WHITE               # user's color
[ $UID -eq "0" ] && UC=$COLOR_RED   # root's color


###########################################################################
# Terminal color formatting
###########################################################################
# 
# vaddina /home/vaddina  
# → gvim ~/.bashrc 
# 
#PS1="$TITLEBAR\n\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_BLACK}\]\$(vcprompt) \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "  

# Format-2
# 
# vaddina /home/vaddina  
# → gvim ~/.bashrc 
# 
PS1="\n\[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "  


###########################################################################
# Color formatting for the command 'ls'
###########################################################################
# Src: https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
# Some nice color choices (in this case 0;35 it is purple) are:
# 
# The first number is the style (1=bold), followed by a semicolon, and then the actual number of the color, possible styles (effects) are:
# 
# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text (disabled on some terminals)
# 7   = reverse field (exchange foreground and background color)
# 8   = concealed (invisible)
# 
# The possible backgrounds:
# 
# 40  = black background
# 41  = red background
# 42  = green background
# 43  = orange background
# 44  = blue background
# 45  = purple background
# 46  = cyan background
# 47  = grey background
# 100 = dark grey background
# 101 = light red background
# 102 = light green background
# 103 = yellow background
# 104 = light blue background
# 105 = light purple background
# 106 = turquoise background
# 107 = white background
# 
# All possible colors:
# 
# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey
# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise
# 97  = white
# 
# These can even be combined, so that a parameter like:
# 
# di=1;4;31;42
# 
# in your LS_COLORS variable would make directories appear in bold underlined red text with a green background!
# 
# You can also change other kinds of files when using the ls command by defining each kind with:
# 
# bd = (BLOCK, BLK)   Block device (buffered) special file
# cd = (CHAR, CHR)    Character device (unbuffered) special file
# di = (DIR)  Directory
# do = (DOOR) [Door][1]
# ex = (EXEC) Executable file (ie. has 'x' set in permissions)
# fi = (FILE) Normal file
# ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
# mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
# no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
# or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
# ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
# pi = (FIFO, PIPE)   Named pipe (fifo file)
# sg = (SETGID)   File that is setgid (g+s)
# so = (SOCK) Socket file
# st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
# su = (SETUID)   File that is setuid (u+s)
# tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
# *.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm

#LS_COLORS=$LS_COLORS:'di=0;35:' ;export LS_COLORS
#LS_COLORS=$LS_COLORS:'di=0;35:ow=1;30;107:tw=1;30;107:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'di=1;4;33:ow=1;4;33:tw=1;4;33:' ; export LS_COLORS
ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'
alias ll='ls -halF'



###########################################################################
# grep configuration for colorful results
###########################################################################
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
