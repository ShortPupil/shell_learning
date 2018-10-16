#!/bin/bash
# Program:
#       乘法
#History:
# 2018/09/13 songi First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "Your SHOULD input 2 numbers\n"
read -p "first number: " firstnu
read -p "second number: " secnu

# 或者写成 declare -i total=$firstnu*$secnu
total=$(($firstnu*$secnu))

echo -e "result of $firstnu * $secnu is ==> $total"
