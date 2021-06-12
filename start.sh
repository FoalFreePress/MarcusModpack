#! /bin/bash

MINECRAFTJAR=forge-1.16.5-36.1.35-shroom-1.16.x.jar
JAVA_EXE="~/bin/jdk15/bin/java"

# change java memory here:
export RAM=8G


export LOCKFILE=minecraft.pid

if [ -f $LOCKFILE ]
then
echo 'it looks like minecraft is already running'
echo 'if you think that is wrong and theres a stale lockfile, here is the process:'
ps `cat $LOCKFILE`
echo '====='
echo "if there is no process, delete $LOCKFILE and run this script again"
exit
fi

# remove the lock file if control-c
trap "rm -f $LOCKFILE; exit" INT TERM EXIT

echo $$ > $LOCKFILE

while true;
do

ulimit -a

eval $JAVA_EXE -jar -Xmx$RAM --illegal-access=permit -Dmixin.debug.export=true -Dmixin.debug.verbose=true -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M $MINECRAFTJAR nogui

~/bin/backup-minecraft-full.sh

echo restarting in 5 seconds...
sleep 1
echo restarting in 4 seconds...
sleep 1
echo restarting in 3 seconds...
sleep 1
echo restarting in 2 seconds...
sleep 1
echo restarting in 1 second...
sleep 1

done

rm -f $LOCKFILE
