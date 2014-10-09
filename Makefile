
dependencies: dependencies.json
	@packin install --folder $@ --meta $<
	@ln -snf .. $@/status

test: dependencies
	@$</jest/bin/jest test

.PHONY: test
