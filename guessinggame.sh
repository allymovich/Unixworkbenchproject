#!/bin/bash

var=`ls`
#the touch  and rm command helps the file not to append when it is run constantly

touch files.txt
rm files.txt
for files in $var
 do
  if [[ -f $files ]]
  then
  echo "$files" >> files.txt
  fi
done 
read -p "GUESS THE NUMBER OF FILES:    " input
echo "$input"
z=`wc -w files.txt|cut -d" " -f 1 `
if [[ $input -lt $z ]]
then
echo -e " TOO SMALL \n TRY AGAIN......"
elif [[ $input -gt $z ]]
then
echo -e " TOO LARGE \n TRY AGAIN ......"
else
echo "CONGRATULATIONS"
fi
rm files.txt
