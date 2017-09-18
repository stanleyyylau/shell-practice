[root@localhost sbin]# :vi 0918-00.sh
#! /bin/bash

# 用户输入数字，如果输入的是非数字，提示 “please just input a number!”并结束,如果是纯数字，返回数字结果。

read -p "Enter your shit!" var
re='^-?[0-9]+([.][0-9]+)?$'

if ! [[ $var =~ $re  ]] ; then
   echo "Please just input a number"; exit 1
else
   echo "The number you just entered is $var"
fi