#!/bin/bash
#set -x
shell_path=/home/ap/webapp/getfiles.sh
filename=/home/ap/nas/mtchannel/logs/trace/bird_operate.$1.zip

if [ 'a'$1'a' == 'aa' ]; then
   echo "Enter The FileDate You Need Upload [--example: ./uploadLog.sh 20200622]" 
else
   if [ -f $filename ]; then
#########run getfiles##########
shell_exec=$( sh $shell_path <<EOF
              2
              /home/ap/nas/mtchannel/logs/trace/
              bird_operate.$1.zip
              n
EOF
)
   else
       echo "This File Dose Not Exits!"
   fi
fi
