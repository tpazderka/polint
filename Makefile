.PHONY: test coverage isort check-isort check-flake8

test:
	python tests/__init__.py discover

coverage:
	python-coverage erase
	-rm -r htmlcov
	python-coverage run --branch --source="." tests/__init__.py discover
	python-coverage html -d htmlcov

isort:
	isort --recursive polint.py tests

check-isort:
	isort --check-only --diff --recursive polint.py tests

check-flake8:
	flake8 --format=pylint polint.py tests
