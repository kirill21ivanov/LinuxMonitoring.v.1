#!/bin/bash
WH_FONT='\033[37m'
RED_FONT='\033[31m'
GREEN_FONT='\033[32m'
PUR_FONT='\033[35m'
BLACK_FONT='\033[30m'
WH_BG='\033[47m'
RED_BG='\033[41m'
GREEN_BG='\033[42m'
BLUE_BG='\033[44m'
PUR_BG='\033[45m'
BLACK_BG='\033[40m'
case $1 in
1) echo -en $WH_BG;;
2) echo -en $RED_BG;;
3) echo -en $GREEN_BG;;
4) echo -en $BLUE_BG;;
5) echo -en $PUR_BG;;
6) echo -en $BLACK_BG;;
esac
case $2 in
1) echo -en $WH_FONT;;
2) echo -en $RED_FONT;;
3) echo -en$GREEN_FONT;;
4) echo -en $BLUE_FONT;;
5) echo -en $PUR_FONT;;
6) echo -en $BLACK_FONT;;
esac
case $3 in
1) echo -en $WH_BG;;
2) echo -en $RED_BG;;
3) echo -en $GREEN_BG;;
4) echo -en $BLUE_BG;;
5) echo -en $PUR_BG;;
6) echo -en $BLACK_BG;;
esac
case $4 in
1) echo -en $WH_FONT;;
2) echo -en $RED_FONT;;
3) echo -en $GREEN_FONT;;
4) echo -en $BLUE_FONT;;
5) echo -en $PUR_FONT;;
6) echo -en $BLACK_FONT;;
esac
