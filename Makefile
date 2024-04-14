PYTHON = .venv/bin/python
POETRY := ~/.local/bin/poetry

.PHONY: install/*
install/poetry:
	curl -sSL https://install.python-poetry.org | POETRY_HOME=~/.local/bin/poetry python3 -
	$(POETRY) config virtualenvs.in-project null



.PHONY: setup
setup:
	make install/poetry
	${POETRY} install


.PHONY: test
test:
	${PYTHON} -m pytest ./tests