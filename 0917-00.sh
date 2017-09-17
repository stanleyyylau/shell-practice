#! /bin/bash

# for循环打印下面这句话中字母数不大于6的单词。
# Bash also interprets a number of multi-character options.

sentence='Bash also interprets a number of multi-character options.'
echo $sentence |tr -d '.' | tr ' ' '\n' > temp.text


echo 'Below words has less than 6 letters'
for word in `cat ./temp.text`; do
    numberOfLetter=${#word}
    if ((numberOfLetter<6)); then
      echo $word
    fi
done