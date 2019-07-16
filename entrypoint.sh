#!/usr/bin/bash -l

set -e
usermod -u ${UID} user
groupmod -g ${GID} user
chown -R user:user /home/user
chown -R user:user /opt/pyenv

ARGUMENTS="$@"
echo "Running: $ARGUMENTS"

/usr/bin/su-exec user bash -lc "$ARGUMENTS"