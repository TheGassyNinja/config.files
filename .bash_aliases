#-------------------------\\\\\\
#     	bash_aliases
#-------------------------//////

#set
export PATH=$PATH:~/bin 
export EDITOR='/usr/bin/vim'

#my functions
#perform 'ls' after 'cd' if successful.
cdls() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls
  fi
}

#cfg shortcuts/notes
notes() { $EDITOR ~/Desktop/archinstallnotes/arch-setup.notes ;}
cfg-aliases() { $EDITOR ~/.bash_aliases ;}
cfg-bashrc() { $EDITOR /etc/bash.bashrc ;}
cfg-ssh() { $EDITOR /etc/ssh/ssh_config ;}
cfg-sshd() { $EDITOR /etc/ssh/sshd_config ;}
cfg-mc() { $EDITOR ~/.config/mc/ini ;}
cfg-vimrc() { $EDITOR ~/.vimrc ;}
cfg-xorg() { $EDITOR /etc/X11/xorg.conf ;}
cfg-pacman.conf() { $EDITOR /etc/pacman.conf ;}
cfg-mirrorlist() { $EDITOR /etc/pacman.d/mirrorlist ;}

#sudos
alias get='sudo apt-get --assume-yes install'
alias update='sudo apt-get update && echo 'Update' >> ~/updates.txt && date >> ~/updates.txt'
alias upgrade='sudo apt-get upgrade && echo 'Upgrade' >> ~/updates.txt && date >> ~/updates.txt'
alias purge='sudo apt-get purge'
alias god='sudo -i'
alias root='sudo -i'

#cds
alias cd='cdls'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

#common CLI workspaces
alias d='cd ~/Desktop'
alias scripts='cd ~/bin'		#needs to be made
alias sandbox='cd ~/sandbox'		#^

#terminal manipulations
alias cls='clear'
alias c='clear'
alias source='source /etc/bash.bashrc'
alias x='exit'

#sys info
alias ver='lsb_release -a'
alias free='free -m'
alias hardware='inxi -Fx'
alias p='ps aux | grep' 	#?

#tar
alias targz='tar -zxvf'
alias tarbz='tar -xjvf'

#vlc controls
alias pause='kill -STOP $(pgrep vlc)'
alias cont='kill -CONT $(pgrep vlc)'

#
#---end
