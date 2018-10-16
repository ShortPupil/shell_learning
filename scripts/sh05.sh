#!/bin/bash
# Program:
#	user input a filename, program check the flowing:
#	1. exit    2.file/directory     3.file permissions
# History:
# 	2018/09/13 songi First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 让用户输入文件名
echo -e "Please input a filename, I will check the filename's type and permission.\n\n"
read -p "Input a filename : " filename
test -z $filename && echo "You Must input a filename." && exit 0
# 2. 判断文件是否存在，若不存在则显示信息并结束脚本
test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0
# 3. 开始判断文件类型和属性
test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"
# 4. 开始输入信息
echo "the filename: $filename is a $filetype"
echo "And the permissions are : $perm"
