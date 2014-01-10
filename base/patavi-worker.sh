#!/bin/sh

export BROKER_SOCKET=$PATAVI_SERVER_PORT_7740_TCP

cd /var/lib/patavi/src/worker
/var/lib/patavi/bin/lein with-profile production run "$@"
