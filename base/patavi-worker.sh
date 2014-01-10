#!/bin/sh

cd /var/lib/patavi/src/worker
/var/lib/patavi/bin/lein with-profile production run "$@"
