#!/bin/bash

# 设计一个脚本，监控远程的一台机器(假设ip为123.23.11.21)的存活状态，当发现宕机时发一封邮件给你自己。

SERVERIP=192.168.2.3
NOTIFYEMAIL=test@example.com

ping -c 3 $SERVERIP > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
   mailx -s "Server $SERVERIP is down" -t "$NOTIFYEMAIL" < /dev/null 
fi