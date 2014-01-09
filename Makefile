all: _base

_%: %/Dockerfile
	cd $(dir $<) && docker build -t patavi/$* .
	touch $@

_base: _build-ready
