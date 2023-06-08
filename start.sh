#!/bin/sh

export JBOSS_HOME=$WILDFLY_LOCATION
export CLASSPATH=${JBOSS_HOME}/modules/system/layers/base/org/picketbox/main/picketbox-5.0.2.Final.jar:${JBOSS_HOME}/modules/system/layers/base/org/jboss/logging/main/jboss-logging-3.3.1.Final.jar:$CLASSPATH
java org.picketbox.datasource.security.SecureIdentityLoginModule $PASSWORD
