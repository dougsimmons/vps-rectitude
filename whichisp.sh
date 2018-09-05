#!/bin/bash
# usage: ./whichisp.sh [ip address of interest]
# Use this to try to get the domain name of the ISP of some server going by whois data
# this thing might work, maybe not.. part of https://github.com/dougsimmons/vps-rectitude/
for var in "$@"
do
  whois "$var" | grep TechEmail | awk -F '@' '{print $2}' | sed '$!d'
if [ $? -eq 0 ]; then
  echo asdf > /dev/null
else
  echo FAIL
fi
done
