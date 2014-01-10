FROM patavi/worker

USER patavi
ENV HOME /var/lib/patavi
ENTRYPOINT ["/var/lib/patavi/bin/patavi-worker", "--method", "slow", "--rserve", "-n", "1", "--file", "/var/lib/patavi/src/worker/resources/pirate/slow.R"]
