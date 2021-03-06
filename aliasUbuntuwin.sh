#######################################
##      Aliases Directory ##
#######################################
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias gohome="cd ~"
alias helpi="cd /home/helpi"
alias pi="cd /home/pi"
alias cdd="cd - > /dev/null"

##      GitHub commandos             ##
#######################################
alias cdgit="cd /mnt/z/Google\ Drive/Scripte/GitHub\ Repository"
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '
#######################################
##      Setup commandos      ##
#######################################
alias update="sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoclean && sudo apt-get clean && sudo apt-get autoremove -y "
alias auto='sudo apt-get autoremove'
# edit this file
alias editbash="nano $HOME/.bash_aliases"
# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
  alias reboot='sudo reboot'
  alias nano='sudo nano'
  alias vi='sudo nano'
  alias edit='sudo nano'
  alias apt-get='sudo apt-get'
  alias update='sudo apt-get update && sudo apt-get upgrade'
  alias aptitude='sudo apt-get'
  alias service='sudo service'
  alias 7="chmod 777 -R ."
alias s7="sudo chmod 777 -R ."

fi
function ps? () {
        echo "USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND"
        ps aux | grep $1
}
# Gibt die Größen der Ordner an
alias getsize="du -hc -d 0 `ls -trx --hide=log | tr '\n' ' '` | sh"
#######################################
##      LS commandos         ##
#######################################
# show hidden files only
alias ls.='ls -d .* --color=auto'

# show extra options
alias dir='ls -alv'

# go to directory and execute 'ls'
function cdl() {
    if [ "$*" = "" ]
    then
        cd
    else
        cd "$*";
    fi
        dir;
}
alias ls="ls --color -h --group-directories-first -I '*.pyc' -I '__*__'"
alias ll='ls -alF'
alias l="ls -l"
alias lszeigen="ls -lh" # Dateien + Rechte + Größe
alias llab='ls -laFh --time-style="+%d-%m-%y"'
# show extra options
alias dir='ls -alv'
#######################################
##      Docker       ##
#######################################
alias dops="docker ps -a"
alias doi="docker images"
alias doirm='docker rmi $(docker images -q)'
alias dost='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias doc='docker-compose'
#######################################
##      tar commandos        ##
#######################################
alias tarzeigen="tar -ztvf"
alias tarc='tar -zcvf'
alias tard='tar -zxvf'

function tarz() {
        [ "$1" != "" ] && tar -czRf $1.tar.gz $1 && echo "$1.tar.gz created successfully!"|| echo "Usage: tarz [folder_or_file]"
}

function tarj() {
        [ "$1" != "" ] && tar -cjRf $1.tar.bz2 $1 && echo "$1.tar.bz2 created successfully!" || echo "Usage: tarj [folder_or_file]"
}

function utar() {
        [ "$1" != "" ] && tar -xvf $1 || echo "Usage: utar [tar_file_name]"
}
#######################################
##      Zip commandos        ##
#######################################
alias makezip="/usr/bin/zip -rq "  # /usr/bin/zip -rq /backup/test_`date "+%Y-%m-%d"`.zip ./
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
skript () { touch $1.sh && chmod +x $1.sh && nano $1.sh; }     # skript         Erstellt eine Datei, führt chmod +x aus und öffnet nano
#######################################
##      Borg-Backup          ##
#######################################
alias borg_check="sudo borg check" # borg check /pfad/zum/repo
alias borg_list="sudo borg list" # borg list /pfad/zum/repo
alias borg_mount="sudo borg mount" # borg mount /pfad/zum/repo /mnt/repo
alias borg_prune="sudo borg prune dry-run keep-daily=7 keep-weekly=4" # + /pfad/zum/repo
alias borg_info="sudo borg info" # borg info /pfad/zum/repo::ARCHIV
#######################################
##      Grep commandos       ##
#######################################
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#######################################
##      System       ##
#######################################
alias exe='chmod +x'
alias gping='ping google.com -c 1'
#copy and go to dir
cpg (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}

#move and go to dir
mvg (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}
alias mkdir="mkdir -p"
alias wget="wget -c"
alias mv="mv -i"
alias rd="rmdir"
alias remac='ifdown wlan0 && sleep 3 && macchanger -r wlan0 && sleep 3 && ifup wlan0'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
#######################################
##      Openhab      ##
#######################################
alias logoh="tail -f /var/log/openhab2/openhab.log -f /var/log/openhab2/events.log"
alias rroh="sudo service openhab2 restart"
#######################################
##      Cat commandos        ##
#######################################
alias ali="cat /home/$USER/.bash_aliases | grep '^alias' | sed 's/alias //g' | grep -e '^[^=]*' "

# find something in the current directory
function llfind { ll -A -h | grep -i $1; }
# #find something in chosen directory
function cdllfind { cd $1 && ll -A -h | grep -i $2; }
#######################################
##      NEU 15.08.17         ##
#######################################
#Back Up and date
function bkdate() {
  cp $1 $1.`date +%Y%m%d`;
}

######################################
# cd GitHub Ordner
alias gitcd="cd /mnt/z/Google\ Drive/Scripte/GitHub\ Repository/"