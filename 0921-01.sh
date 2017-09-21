#!/bin/bash

# 设计一个shell程序，在每月第一天备份并压缩/etc目录的所有内容，存放在/root/bak目录里，
# 且文件名为如下形式"yymmdd_etc.tar.gz"，yy为年，mm为月，dd为日。

folderToBackUp=/etc/
fileName=`date +%Y-%m-%d_etc.tar.gz`
saveTo="/root/bak/$fileName"

tar -zcvf $saveTo $folderToBackUp
