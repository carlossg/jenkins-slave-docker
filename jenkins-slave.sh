#!/bin/bash

# Usage jenkins-slave.sh [options] -url http://jenkins SECRET SLAVE_NAME

# if `docker run` has 2 or more arguments the user is passing jenkins launcher arguments
if [[ $# -gt 1 ]]; then

  # jenkins slave
  JAR=`ls -1 /usr/share/jenkins/remoting-*.jar | tail -n 1`

  PARAMS=""

  # if -url is not provided try env var
  if [[ "$@" != *"-url "* ]] && [ ! -z "$JENKINS_URL" ]; then
    PARAMS="$PARAMS -url $JENKINS_URL"
  fi

  # if -tunnel is not provided try env var
  if [[ "$@" != *"-tunnel "* ]] && [ ! -z "$JENKINS_TUNNEL" ]; then
    PARAMS="$PARAMS -tunnel $JENKINS_TUNNEL"
  fi

  echo Running java $JAVA_OPTS -jar $JAR $PARAMS "$@"
  exec java $JAVA_OPTS -cp $JAR hudson.remoting.jnlp.Main -headless $PARAMS "$@"
fi

# As argument is not jenkins, assume user want to run his own process, for sample a `bash` shell to explore this image
exec "$@"
