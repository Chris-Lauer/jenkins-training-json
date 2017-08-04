#!/bin/bash

cat <<EOF > build.properties
VERSION=$(cat VERSION)
GIT_BRANCH=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
GIT_COMMIT=$(git log --pretty=format:'%h' -n 1)

JENKINS_JOB_NAME=$JOB_BASE_NAME
JENKINS_JOB_ID=$BUILD_ID
JENKINS_NODE=$NODE_NAME
EOF
