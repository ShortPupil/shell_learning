#!/bin/bash
# Program:
#       Program shows usr's choices
#History:
# 2018/09/13 songi First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N) : " yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo "continue" && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "interrupt" && exit 0
echo "I dont know what your choice is" && exit 0
