#!/usr/bin/env sh

if [ -x "$POMPATH/mvnw" ]; then
    MAVEN="$POMPATH/mvnw"
else
    MAVEN="mvn"
fi

"${MAVEN}" -f "$POMPATH" help:evaluate -Dexpression=project.version -q -DforceStdout
