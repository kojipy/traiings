PYTHON = .venv/bin/python
POETRY := $(shell command -v poetry 2> /dev/null)

.PHONY: install/*
install/poetry:
	curl -sSL https://install.python-poetry.org | POETRY_HOME=~/.local/bin/poetry python3 -
	export PATH="$HOME/.local/bin"
	$(POETRY) config virtualenvs.in-project null



.PHONY: setup
setup:
	make install/poetry
	${POETRY} install


.PHONY: test
test:
	${PYTHON} -m pytest ./tests