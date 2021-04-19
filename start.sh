JAVA_EXE="~/bin/jdk15/bin/java"
MINECRAFTJAR="forge-1.16.5-36.1.4.jar"

eval $JAVA_EXE -jar -Xmx8G --illegal-access=permit -Dmixin.debug.export=true -Dmixin.debug.verbose=true -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M $MINECRAFTJAR nogui
