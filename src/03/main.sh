#!/bin/bash

if [ -z $1 ]; then
	echo "Напиши парамент для цвета!"
	exit 1
elif [ -z $4 ]; then
	echo "Их должно быть 4!"
	exit 1
elif [  $5 ]; then
	echo "Я смотрю ты во вкус вошел, всего 4!!!"
	exit 1
fi
for par in $@
do
	if [[ ($par != [0-9]) || ($par -lt 1) || ($par -gt 6) ]]; then
		echo "Я конечно все понимаю, но у меня всего 6 цветов"
		exit 1
	fi
done
for par in $@
do
	if [[ (($1 -eq $2) || ($3 -eq $4)) ]]; then
		echo "Ты меня за придурка не держи! Как я тебе сделаю фон и буквы одного цвета?"
		exit 1
	fi
done
chmod +x out.sh
. ./out.sh
