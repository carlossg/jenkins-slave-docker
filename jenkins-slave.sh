#!/bin/bash

# if `docker run` first argument start with `-` the user is passing jenkins launcher arguments
if [[ $# -lt 1 ]] || [[ "$1" == "-"* ]]; then

  # jenkins slave
  JAR=`ls -1 /usr/share/jenkins/remoting-*.jar | tail -n 1`

  # if -jnlpUrl is not provided try env var
  if [[ "$@" != *"-jnlpUrl "* ]] && [ ! -z "$JENKINS_JNLP_URL" ]; then
    PARAMS="-jnlpUrl $JENKINS_JNLP_URL"
  fi

  # if -secret is not provided try env var
  if [[ "$@" != *"-secret "* ]] && [ ! -z "$JENKINS_SECRET" ]; then
    PARAMS="-secret $JENKINS_SECRET"
  fi

  echo Running java $JAVA_OPTS -jar $JAR $PARAMS "$@"
  exec java $JAVA_OPTS -jar $JAR $PARAMS "$@"
fi

# As argument is not jenkins, assume user want to run his own process, for sample a `bash` shell to explore this image
exec "$@"
