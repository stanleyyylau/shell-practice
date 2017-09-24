#!/bin/bash

# 写一个shell脚本，检测所有磁盘分区使用率和inode使用率并记录到以当天日期为命名的日志文件里，
# 当发现某个分区容量或者inode使用量大于85%时，发邮件通知你自己。

file=IO-`date +%Y-%m-%d`.log

echo "Disk Useage For The Day\n" >> $file

df >> $file

echo "\n" >> $file

## Checking disk uage percentage

for i in `df |awk '{print $5}' |grep [0-9] |tr -d '%'`
    do
        if ((i>=85)); then
            echo "One of your hard disk usage is more than 85 percent"
        fi
    done

echo "Disk Inode usage for the Day\n" >> $file

df -i >> $file

## Checking inode usage percentage

for i in `df -i |awk '{print $5}' |grep [0-9] |tr -d '%'`
    do
        if ((i>=85)); then
            echo "One of your hard disk INODE is more than 85 percent"
        fi
    done


echo "\n" >> $file

