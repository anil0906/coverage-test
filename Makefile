#!make
SHELL:=/bin/bash

# pp - pretty print function
yellow := $(shell tput setaf 3)
normal := $(shell tput sgr0)
define pp
	@printf '$(yellow)$(1)$(normal)\n'
endef


help: Makefile
	@echo " Choose a command to run:"
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'


# DEV #############################################################################################

## dev.init: 🌏 Initialize local dev environment
dev.init: install
	$(call pp,install git hooks...)
	cargo install cargo-watch
	cargo test
	cd pg_js && npm install


# TEST / DEPLOY ###################################################################################

## install: 🧹 Installs dependencies
install:
	$(call pp,pull rust dependencies...)
	rustup install "1.63.0"
	rustup override set "1.63.0"
	rustup component add rust-src clippy llvm-tools-preview
	rustup toolchain install nightly
	cargo install cargo2junit grcov
	cargo fetch

## build: 🧪 Compiles rust
build:
	$(call pp,build rust...)
	cargo build
	cd pg_js && npm run build


## lint: 🧹 Checks for lint failures on rust
lint:
	$(call pp,lint rust...)
	cargo check
	cargo fmt -- --check
	cargo clippy --all-targets -- -D warnings

## test.unit: 🧪 Runs unit tests
test.unit:
	$(call pp,rust unit tests...)
	cargo test

## test.unit.coverage.rust: 🧪 Runs rust unit tests with coverage 'cobertura' and 'junit' reports
test.unit.coverage.rust:
	$(call pp,rust unit tests...)
	mkdir -p build/.report
	mkdir -p build/.coverage
	CARGO_INCREMENTAL="0" RUSTFLAGS="-Zprofile -Ccodegen-units=1 -Copt-level=0 -Clink-dead-code -Coverflow-checks=off -Zpanic_abort_tests -Cpanic=abort -Clink-args=-Wl,-undefined,dynamic_lookup" LLVM_PROFILE_FILE="coverage-%p-%m.profraw" cargo +nightly test -- -Z unstable-options --format json --report-time > build/.report/rust-test-report.json
	cat build/.report/rust-test-report.json | cargo2junit > build/.report/rust-junit-report.xml
	grcov . --binary-path ./target/debug/ -s . -t cobertura --branch --ignore-not-existing  --ignore "*cargo*" --keep-only "**/**.rs" -o ./build/.coverage/rust-cobertura-coverage.xml


# PHONY ###########################################################################################

# To force rebuild of not-file-related targets, make the targets "phony".
# A phony target is one that is not really the name of a file;
# Rather it is just a name for a recipe to be executed when you make an explicit request.
.PHONY: build
