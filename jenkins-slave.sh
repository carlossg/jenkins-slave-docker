#!/bin/bash

# if `docker run` first argument start with `-` the user is passing jenkins launcher arguments
if [[ $# -lt 1 ]] || [[ "$1" == "-"* ]]; then

  # jenkins slave
  JAR=`ls -1 /usr/share/jenkins/remoting-*.jar | tail -n 1`

  echo Running java $JAVA_OPTS -jar $JAR "$@"
  exec java $JAVA_OPTS -jar $JAR "$@"
fi

# As argument is not jenkins, assume user want to run his own process, for sample a `bash` shell to explore this image
exec "$@"
