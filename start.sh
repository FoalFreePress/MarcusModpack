JAVA_EXE="~/bin/jdk15/bin/java"
MINECRAFTJAR="forge-1.16.5-36.6.2-shroom-1.16.x.jar"

eval $JAVA_EXE -jar -Xmx8G -XX:+UseZGC --illegal-access=warn $MINECRAFTJAR nogui
