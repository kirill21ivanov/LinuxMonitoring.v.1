#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]]; then

   echo "Использовать числа нельзя"

else

   echo $1

fi
