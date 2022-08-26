#!/bin/bash
set -eo pipefail
greeting() {
echo Hello, $1
return $?
}
greeting $1
RET=$?
if [ ${RET} -ne 0 ] ; then
echo 'ERR: Failed to give greeting' > /dev/stderr
else
echo 'DEBUG: Greeted the Github User' > /dev/stderr
fi
