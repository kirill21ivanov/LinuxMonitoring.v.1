#!/bin/bash
START_TIME=$(date +%s%N)
echo echo "Total number of folders (including all nested ones) = $(find $1* 2>/dev/null -type d| wc -l)"
echo  "TOP 5 folders of maximum size arranged in descending order (path and size): "  
du $1 -h 2>/dev/null | sort -hr | head -5 | awk '{print "-",$2",", $1"b"}' |nl #для пронумерованного списка
echo "Total number of files =" $(find $1 -type f 2>/dev/null | wc -l)
echo "Number of:"
echo "Configuration files (with the .conf extension) =" $(find $1 -name "*.conf"  2>/dev/null | wc -l)
echo "Text files = " $(find $1 -name "*.txt"  2>/dev/null | wc -l)
echo "Executable files = " $(find $1 -type f -executable  2>/dev/null | wc -l)
echo "Log files (with the extension .log) = " $(find $1 -name "*.log"  2>/dev/null | wc -l)
echo "Archive files = " $(find $1 -name '*.tar' -o -name '*.zip' -o -name '*.7z' -o -name '*.rar' -o -name '*.gz'  2>/dev/null | wc -l)
echo "Symbolic links = " $(find $1 -type l  2>/dev/null | wc -l)
TOP_10=`find $1 -type f -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print "- " $3 ", " $2}'`
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$TOP_10" |nl
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)" 
array=($(find $1 -type f -executable -exec du -h {} +  2>/dev/null | sort -hr | head -10 | awk '{print $2}'))
COUNT=0
for abs_path in ${array[*]}
do
    COUNT=$(( $COUNT + 1 ))
    echo "     $COUNT  - "$(find $abs_path -type f -exec du -h {} +  2>/dev/null | awk '{printf "%s, %s", $2, $1}')b, $(md5sum $abs_path | awk '{print $1}')
done

END_TIME=$(date +%s%N)
DIFF=$(($END_TIME - $START_TIME))
TIME_SEC=`echo "scale=3; $DIFF / 1000000000" | bc`
echo "Script execution time (in seconds) = $TIME_SEC s." 
