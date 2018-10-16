#!.bin.bash
# Program:
#	User input his first name and last name. Program shows his full name.
# History:
#	2018/10/16 songzi    First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname
echo -e "\nYour name is : $firstname $lastname"
