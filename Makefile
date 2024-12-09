.PHONY: all build test clean setup

all: build

build:
	dune build

test:
	dune runtest

clean:
	dune clean

setup:
	opam switch create . 4.14.0 --deps-only
	eval $(opam env)
