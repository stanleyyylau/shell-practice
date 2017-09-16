#! /bin/bash

# 统计所有进程占用的内存大小，并计算总和

memUse=`free -h |grep 'Mem' |awk '{print $3}'`
echo "Memery you have used is $memUse"