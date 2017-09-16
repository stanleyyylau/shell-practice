#! /bin/bash

# 截取系统一分钟的平均负载，只取整数部分

systemInOneMin=`uptime |awk '{print $8}' |awk -F '.' '{print $1}'`

echo "system load per minute is $systemInOneMin (only integer is shown)"