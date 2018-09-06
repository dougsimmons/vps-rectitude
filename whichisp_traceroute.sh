#!/bin/bash
# tries to figure out and print domain name of machine's isp
# part of https://github.com/dougsimmons/vps-rectitude/
#TRACEROUTE edition

for x in 1
do
    guess2=$(traceroute google.com -w 0.1 -q 1 -m2  | sed '$!d' | awk  '{print $2}' | sed -r 's/.*\.([^.]+\.[^.]+)$/\1/')
    OPEN2=$( nc -z -v -w1 "$guess2" 443 2>&1 )
    if [[ "$OPEN2" == *succ* ]]; 
    then
        echo "$guess2"
    else
for x in 1
do
    guess3=$(traceroute google.com -w 0.1 -q 1 -m3  | sed '$!d' | awk  '{print $2}' | sed -r 's/.*\.([^.]+\.[^.]+)$/\1/')
    OPEN3=$( nc -z -v -w1 "$guess3" 443 2>&1 )
    if [[ "$OPEN3" == *succ* ]]; 
    then
        echo "$guess3"
    else
for x in 1
do
    guess4=$(traceroute google.com -w 0.1 -q 1 -m4  | sed '$!d' | awk  '{print $2}' | sed -r 's/.*\.([^.]+\.[^.]+)$/\1/')
    OPEN4=$( nc -z -v -w1 "$guess4" 443 2>&1 )
    if [[ "$OPEN4" == *succ* ]]; 
    then
        echo "$guess4"
    else
        echo hi > /dev/null
fi
done
fi 
done
fi   
done
