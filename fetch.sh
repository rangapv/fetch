#!/bin/bash
echo "hello"
gi=$(git init)
dv=$(docker --version)
gh=$(git reset --hard HEAD)

if [ -z "$dv" ]
then 
   dk=$(git pull https://github.com/rangapv/doker.git)
   echo $?

   if [ $? == 0 ]
   then
     dkx=$(./dock.sh)
   fi
fi

echo "After docker.git"
gh=$(git reset --hard HEAD)
gk=$(git pull https://github.com/rangapv/goi.git)
echo $?

if [ $? == 0 ]
then
   gkx=$(./goi.sh)
fi

echo "After goi.git"
gh1=$(git reset --hard HEAD)
pk=$(git pull https://github.com/rangapv/pyUpgrade.git)
echo $?

if [ $? == 0 ]
then
   pkx=$(./py.sh)
fi

echo "After pyUpgrade.git"
gh2=$(git reset --hard HEAD)
awsk=$(git pull https://github.com/rangapv/system-check.git)
echo $?

if [ $? == 0 ]
then
   awskx=$(./system-check.sh)
fi
echo "After system-check.git"

