#!/bin/bash

# 在文本文档1.txt第5行后面增加如下内容：
# This is a test file.
# Test insert line into this file.

sed -i '5aThis is a test file. \n Test insert line into this file.' 1.txt
