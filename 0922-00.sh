#!/bin/bash

# 输入一个数字，然后运行对应的一个命令。
# 显示命令如下：
# *cmd meau** 1---date 2--ls 3--who 4--pwd 当输入1时，会运行date, 输入2时运行ls, 依此类推。（很实用！）

echo '*cmd meau** 1--date 2--ls 3--who 4--pwd'

while true; do
    read -p "Pick your poison..." selectd
    case $selectd in
        1 ) echo `date`; break;;
        2 ) echo `ls`; break;;
        3 ) echo `who`; break;;
        4 ) echo `pwd`; break;;
        * ) echo "What you selected is not valid";;
    esac
done