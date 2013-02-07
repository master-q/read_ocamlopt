all: helloworld/helloworld

helloworld/helloworld: helloworld/helloworld.ml
	ocamlopt -dstartup -o helloworld/helloworld helloworld/helloworld.ml

clean:
	rm -f `find . -name "*~"`
	rm -f */*.cmi */*.cmx */*.o */*.startup.s
	rm -f helloworld/helloworld

.PHONY: test clean
