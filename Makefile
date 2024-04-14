PYTHON = .venv/bin/python
POETRY = .venv/bin/poetry

.PHONY: setup
setup:
	${POETRY} install


.PHONY: test
test:
	${PYTHON} -m pytest ./tests