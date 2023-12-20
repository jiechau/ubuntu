FROM ubuntu:22.04

ENV TZ="Asia/Taipei"
RUN date
RUN apt-get update && apt-get install -y htop nload telnet vim procps netcat wget curl net-tools dnsutils iputils-ping

RUN mkdir -p /root
RUN echo "# alias    \n\
PS1='\[\033[01;36m\]\w\[\033[00m\]\\n\[\033[01;32m\]\u@\h\[\033[00m\] # '  \n\
alias ls='ls --color=auto' \n\
alias ll='ls -altr'  \n\
alias l='ls -al'   \n\
alias h='history'  \n\
set -o vi          \n"\
> /root/.bashrc

RUN echo "\" vim    \n\
set paste          \n\
set mouse-=a       \n"\
> /root/.vimrc
