#!/bin/sh

if [ "$1" = 'init' ]; then
    cd /root/blog
    hexo init
    npm install 
elif [ "$1" = 'bash' ]; then
	/bin/bash
elif [ "$1" = 'update' ]; then
    cd /root/blog
    npm install hexo-generator-sitemap --save
    npm install hexo-server --save
else
    cd /root/blog
    echo "$*"
    hexo "$*"
fi
