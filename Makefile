PROGS := helloworld/helloworld

all: ${PROGS}

helloworld/helloworld: helloworld/helloworld.ml
	ocamlopt -verbose -dstartup -o $@ $^

clean:
	rm -f `find . -name "*~"`
	rm -f */*.cmi */*.cmx */*.o */*.startup.s
	rm -f ${PROGS}

.PHONY: clean
