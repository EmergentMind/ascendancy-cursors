CWD := $(shell pwd)

.PHONY: all
all: clean build

.PHONY: install
install: build
	@mkdir -p ~/.icons
	@cp -r Ascendancy ~/.icons/Ascendancy
	@echo ::: INSTALL :::

.PHONY: build
build: Ascendancy
	@echo ::: BUILD :::

.PHONY: clean
	-@rm -rf build Ascendancy&>/dev/null | true
	@echo ::: CLEAN :::

Ascendancy:
	@./build.sh
