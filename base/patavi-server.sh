#!/bin/sh

cd /var/lib/patavi/src/server-cached
echo /var/lib/patavi/bin/lein with-profile production run "$@"
/var/lib/patavi/bin/lein with-profile production run "$@"
