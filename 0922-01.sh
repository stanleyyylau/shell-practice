#!/bin/bash

# 将文件内所有的单词的重复次数计算出来，只需要列出重复次数最多的10个单词。

cat 1.txt |tr -d '.' |tr -d ',' |tr ' ' '\n' | sort | uniq -c | sort | tail -n10
