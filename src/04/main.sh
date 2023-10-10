#!/bin/bash
. ./configfile.conf
export param1=$column1_background
export param2=$column1_font_color
export param3=$column2_background
export param4=$column2_font_color

if [ "$param1" -eq "$param2" ] || [ "$param3" -eq "$param4" ]; then
   echo "Два цвета не могут совпадать!"
   exit 1
else

  default1=6
  default2=5
  default3=4
  default4=1

  if [ $1 ]; then
    echo "Ты должен был запомнить , что параменты не нужны!"
    exit 1
  else
    color_name() {
      case ${1} in
      1) echo "1 (white)" ;;
      2) echo "2 (red)" ;;
      3) echo "3 (green)" ;;
      4) echo "4 (blue)" ;;
      5) echo "5 (purple)" ;;
      6) echo "6 (black)" ;;
      esac
    }
    color_default() {
      case ${1} in
      1) echo "(white)" ;;
      2) echo "(red)" ;;
      3) echo "(green)" ;;
      4) echo "(blue)" ;;
      5) echo "(purple)" ;;
      6) echo "(black)" ;;
      esac
    }
    if [ "$param1" = "" ] || [ "$param2" = "" ] || [ "$param3" = "" ] || [ "$param4" = "" ]
      then 
      for par in $default1 $default2 $default3 $default4; do
        case "$par" in
        1 | 2 | 3 | 4 | 5 | 6) 
        ;;
        esac
      done
    chmod +x out.sh
    . ./out.sh $default1 $default2 $default3 $default4
    echo ""
    echo "Column 1 background = default $(color_default "$default1")"
    echo "Column 1 font color = default $(color_default "$default2")"
    echo "Column 2 background = default $(color_default "$default3")"
    echo "Column 2 font color = default $(color_default "$default4")"
    
    else chmod +x out.sh
    . ./out.sh $param1 $param2 $param3 $param4
    echo ""
    echo "Column 1 background = $(color_name "$param1")"
    echo "Column 1 font color = $(color_name "$param2")"
    echo "Column 2 background = $(color_name "$param3")"
    echo "Column 2 font color = $(color_name "$param4")"
    fi
  fi
fi

for par in "$param1" "$param2" "$param3" "$param4"
do
    if [[ ($par != [0-9]) || ($par -lt 1) || ($par -gt 6) ]]; then
        echo ""
        echo "у меня всего 6 цветов как бы -_-"
        exit 1
    fi
done
