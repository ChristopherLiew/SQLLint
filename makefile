help:
	@echo "Available Commands:"
	@echo " - install	: Installs all poetry related requirements"
	@echo " - update	: Updates requirements with poetry"
	@echo " - pylint    : Runs Flake8 to lint all python files"
	@echo " - pyformat  : Runs Black to format all python and jupyter files"
	@echo " - sqllint   : Runs SQLFluff to lint all sql files"
	@echo " - sqlformat : Runs SQLFluff to format all sql files"

install:
	brew install poetry
	poetry install
	poetry shell

update:
	poetry update

pylint:
	read -p "Directory Path: " path; \
	flake8 $$path

pyformat:
	read -p "Directory Path: " path; \
	black --line-length=120 $$path

sqllint:
	# Use \ to ensure that each command is executed in the same shell
	read -p "Directory Path: " path; \
	read -p "SQL Dialect: " lang; \
	sqlfluff lint $$path --dialect=$$lang

sqlformat:
	read -p "Directory Path: " path; \
	read -p "SQL Dialect: " lang; \
	sqlfluff fix $$path --dialect=$$lang
