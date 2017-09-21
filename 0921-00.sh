#!/bin/bash

# 添加user_00 - user_09 10个用户，并且给他们设置一个随机密码，
# 密码要求10位包含大小写字母以及数字，注意需要把每个用户及密码记录到一个日志文件里。

touch newUser.txt

for i in `seq 0 9`; do
    username=user_0$i
    adduser $username
    userpass=`mkpasswd -l 10 -d 3 -s 2`
    echo $userpass |passwd $username --stdin
    echo "$username $userpass"  >> newUser.txt
done