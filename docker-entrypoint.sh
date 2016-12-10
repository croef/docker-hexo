#!/bin/sh

if [ "$1" == 'init' ]; then
    hexo init
	npm install
elif [ "$1" == "bash" ]; then
	/bin/bash
else
	echo "$*"
	hexo "$*"
fi
