#!/bin/bash

# 写一个shell脚本。提示你输入一个暂停的数字，然后从1打印到该数字。然后询问是否继续。继续的话在输入个在数字 接着打印。不继续退出。  
# 例：如果输入的是5，打印1 2 3 4 5  然后继续 输入15   然后打印 6 7 ...14 15 依此类推。

lastNumber=1

function askForNum()
{
echo "Hello, what's your number?"
read newNumber

# If this is not a valid number
re='^[0-9]+$'
if ! [[ $newNumber =~ $re ]] ; then
   echo "error: Not valid number"; exit 1
fi

echo "The number you enter is $newNumber"
for i in `seq $lastNumber $newNumber`;
do
        echo $i
done
echo "Do you want to continue?(yes or no)"
read isContinue

if [ "$isContinue" == "yes" ] ; then
lastNumber=$(( $newNumber + 1 ))
askForNum
else
 exit
fi

}

askForNum