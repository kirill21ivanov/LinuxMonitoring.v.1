#!/bin/bash
chmod +x tabl.sh
color=./tabl.sh
HOSTNAME=$(hostname)
TIMEZONE="$(cat /etc/timezone) $(date +"%Z" -u) $(date +"%:::z")"
USER=$(whoami)
OS=$(cat /etc/issue | awk '{print $1 $2 $3}')
DATE=$(date +"%d %B %Y %H:%M:%S")
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
IP=$(hostname -I)
MASK=$(route -n | awk 'NR==5{print $3}')
GATEWAY=$(ip r | awk '/default/{print $3}')
RAM_TOTAL=$(free -m | awk 'NR==2{printf "%.3f GB", $2/1024}')
RAM_USED=$(free -m | awk 'NR==2{printf "%.3f GB", $3/1024}')
RAM_FREE=$(free -m | awk 'NR==2{printf "%.3f GB", $4/1024}')
SPACE_ROOT=$(df /root | awk 'NR==2{printf "%.2f MB", $2/1024}')
SPACE_ROOT_USED=$(df /root | awk 'NR==2{printf "%.2f MB", $3/1024}')
SPACE_ROOT_FREE=$(df /root | awk 'NR==2{printf "%.2f MB", $4/1024}')
end='\033[0m\n'
echo -en $($color $1 $2)"HOSTNAME="$($color $3 $4)$HOSTNAME$end
echo -en $($color $1 $2)"TIMEZONE="$($color $3 $4)$TIMEZONE$end
echo -en $($color $1 $2)"USER="$($color $3 $4)$USER$end
echo -en $($color $1 $2)"OS="$($color $3 $4)$OS$end
echo -en $($color $1 $2)"DATE="$($color $3 $4)$DATE$end
echo -en $($color $1 $2)"UPTIME="$($color $3 $4)$UPTIME$end
echo -en $($color $1 $2)"UPTIME_SEC="$($color $3 $4)$UPTIME_SEC$end
echo -en $($color $1 $2)"IP="$($color $3 $4)$IP$end
echo -en $($color $1 $2)"MASK="$($color $3 $4)$MASK$end
echo -en $($color $1 $2)"GATEWAY="$($color $3 $4)$GATEWAY$end
echo -en $($color $1 $2)"RAM_TOTAL="$($color $3 $4)$RAM_TOTAL$end
echo -en $($color $1 $2)"RAM_USED="$($color $3 $4)$RAM_USED$end
echo -en $($color $1 $2)"SPACE_ROOT="$($color $3 $4)$SPACE_ROOT$end
echo -en $($color $1 $2)"SPACE_ROOT_USED="$($color $3 $4)$SPACE_ROOT_USED$end
echo -en $($color $1 $2)"SPACE_ROOT_FREE="$($color $3 $4)$SPACE_ROOT_FREE$end
