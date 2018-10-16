#!/bin/bash
# Program:
# 	Program creates three files, which named by user's input 
#	and date command
#History:
# 2018/09/13 songi First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.用户输入文件名
echo -e "I will use 'touch' commend to create 3 files."
read -p "Please input your filename: " fileuser

# 2.变量功能分析文件名是否有设置
filename=${fileuser:-"filename"}

# 3.利用date命令得到需要的文件夹
date1=(date --date='2 days ago' +%Y%m%d)
date2=(date --date='1 day ago' + %Y%m%d)
date3=(date +%Y%m%d)
file1=${filename}${data1}
file2=${filename}${date2}
file3=${filename}${data3}

# 4.创建文件
touch "$file1"
touch "$file2"
touch "$file3"
