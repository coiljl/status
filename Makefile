
dependencies:
	@kip index.jl
	@mkdir $@/coiljl
	@ln -snf ../.. $@/coiljl/status

test: dependencies
	@jest index.jl

.PHONY: test
