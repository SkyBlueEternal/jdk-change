#!/bin/sh
# *name*.sh [version] 

jdk6_home=~/apt/jdk1.6.0_34
jdk7_home=~/apt/jdk1.7.0_67
jdk8_home=~/apt/jdk1.8.0_05

# 默认JDK6
case $1 in
    jdk6 )
        export JAVA_HOME=$jdk6_home
        ;;
    jdk7 )
        export JAVA_HOME=$jdk7_home
        ;;
    jdk8 )
        export JAVA_HOME=$jdk8_home
        ;;
    *)
        export JAVA_HOME=$jdk6_home
        ;;
esac
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
export CLASSPATH=$CLASSPATH:$JAVA_HOME/lib:$JAVA_HOME/jre/lib