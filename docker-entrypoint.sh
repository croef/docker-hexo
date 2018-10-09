#!/bin/sh

if [ "$1" = 'init' ]; then
    cd /root/blog
    hexo init
    npm install 
elif [ "$1" = 'bash' ]; then
	/bin/bash
elif [ "$1" = 'pull' ]; then
    cd /root/blog/
    sh custom-update.sh
else
    cd /root/blog
    hexo "$*"
fi
