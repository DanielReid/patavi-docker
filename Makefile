all: _server _slow

_%: %/Dockerfile
	cd $(dir $<) && docker build -t patavi/$* .
	touch $@

_base: _build-ready

_server: _base
_worker: _base
_slow: _worker
