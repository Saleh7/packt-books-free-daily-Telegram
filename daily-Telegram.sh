#!/bin/bash

# user id telegram
idUser=26034352
# Free Learning PacktPublishing script https://github.com/igbt6/Packt-Publishing-Free-Learning
pathPacktpub='/root/Packt-Publishing-Free-Learning'
pathBooks='/root/Packt-Publishing-Free-Learning/Books/'
# telegram-cli https://github.com/vysheng/tg 
pathTg='/root/tg'

cd $pathPacktpub
python packtPublishingFreeEbook.py -gd

for Book in $pathBooks*
do
  if [ -f "$Book" ];then
    cmd="$pathTg/bin/telegram-cli -W -k $pathTg/server.pub -e \"send_document user#$idUser $Book\""
    eval $cmd
  fi
done

rm -fr $pathBooks*
