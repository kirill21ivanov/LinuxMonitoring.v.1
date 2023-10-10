#!/bin/bash

if [ -z $1 ]; then
  echo "парамент 1 пустой"
  exit 1
elif [[ "${1}" != */ ]]; then
  echo "первый парамент должен заканчиваться на /"
  exit 1
elif ! [ -d $1 ]; then
  echo "данного файла не существует"
  exit 1
else
    chmod +x tabl.sh
    ./tabl.sh $1
fi

