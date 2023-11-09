PYTHON = .venv/bin/python

.PHONY: setup
setup:
	python3 -m venv .venv
	${PYTHON} -m pip install -r requirements.txt


.PHONY: test
test:
	${PYTHON} -m pytest .