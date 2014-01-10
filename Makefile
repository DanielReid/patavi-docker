all: _server _worker

_%: %/Dockerfile
	cd $(dir $<) && docker build -t patavi/$* .
	touch $@

_base: _build-ready

_server: _base
_worker: _base
