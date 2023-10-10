#!/bin/bash
chmod +x ./main.sh
read -p "Save? (Y/N): " sv
if [[ $sv = "Y" || $sv = "y" ]];
then
main_output=$(./main.sh </dev/null)
echo ${main_output} > $(date +"%d_%m_%g_%H_%M_%S").status
else
exit 1
echo "Данные не сохранились!"
fi
