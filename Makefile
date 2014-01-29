REPORTER=spec
TESTS=$(find ./test -type f -name "*.js")
MOCHA = .\node_modules\.bin\mocha

test:
	@SET NODE_ENV=test & $(MOCHA) -u tdd --require should --reporter $(REPORTER) --recursive $(TESTS)
	@echo Done.
test-cov: 
	@SET APP_COV=1 & $(MOCHA) --require should --reporter html-cov  --recursive $(TESTS) > coverage.html 
	@echo Done.
app-cov: clear
	@jscoverage --no-highlight app app-cov		
clear:
	@del /s/q app-cov coverage.html >nul

.PHONY: test