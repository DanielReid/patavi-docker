#!/bin/sh

export PATAVI_TASK_SILENCE_TIMEOUT=20000

cd /var/lib/patavi/src/server-cached
echo /var/lib/patavi/bin/lein with-profile production run "$@"
/var/lib/patavi/bin/lein with-profile production run "$@"
