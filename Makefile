
.PHONY: test

push:
	git config credential.helper 'cache --timeout=3600'
	date > PUSH
	git add .
	git commit -am "push"
	git push

test: push
	bash test/test.sh

test-local:
	bash test/local-test.sh

