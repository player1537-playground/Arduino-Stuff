SHELL = /bin/bash

# Format: create/project-subproject
.PHONY: create/%
create/%: DIR = $(subst -,/,$*)
create/%:
	mkdir -p $(DIR)
	mkdir -p $(DIR)/diagram
	mkdir -p $(DIR)/src
	mkdir -p $(DIR)/lib
	if [ -e $(DIR)/Makefile ]; then \
		echo 'include ../Makefile' > $(DIR)/Makefile; \
	fi

.PHONY: init/%
init/%: DIR = $(subst -,/,$*)
init/%: create/%
	cp base.ino $(DIR)/src/sketch.ino
	ln -s src/sketch.ino $(DIR)/$(notdir $(DIR)).ino

.PHONY: create
create: $(addprefix create/,$(subst /,-,$(wildcard */*)))

.PHONY: test
test:
	@echo $(wildcard basic/blink/*) $(wildcard basic/blink/.[^.]*)
