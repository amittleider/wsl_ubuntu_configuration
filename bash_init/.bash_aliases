alias home="cd ~"
alias aliases="vim ~/.bash_aliases"
alias mysource="cd /mnt/c/Users/amitt/source"
alias nuget="mono /usr/local/bin/nuget.exe"

alias dockerstopall='docker stop $(docker ps -a -q)'
alias dockerrmall='docker rm $(docker ps -a -q)'
alias dockerrmiall='docker rmi -f $(docker images -q)'
alias dockerrmvall='docker volume rm $(docker volume ls -q)'
alias dockerrmnall='docker network rm $(docker network ls -q)'
dockerclean() {
  dockerstopall
  dockerrmall
  dockerrmiall
  dockerrmvall
  dockerrmnall
}


