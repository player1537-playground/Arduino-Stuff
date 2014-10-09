SHELL = /bin/bash
INO = ino

# Format: create/project-subproject
.PHONY: create/%
create/%: DIR = $(subst -,/,$*)
create/%: 
	mkdir -p $(DIR)
	ln -sf ../../Makefile.proj $(DIR)/Makefile

.PHONY: init/%
init/%: DIR = $(subst -,/,$*)
init/%: create/% 
	mkdir -p $(DIR)/ino
	cd $(DIR)/ino; $(INO) init
	mv $(DIR)/ino/* $(DIR)/
	rm $(DIR)/ino/ -r

.PHONY: create
create: $(addprefix create/,$(subst /,-,$(wildcard */*)))