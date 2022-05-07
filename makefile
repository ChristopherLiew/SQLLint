help:
	@echo "Available Commands:"
	@echo " - install	: Installs all poetry related requirements"
	@echo " - update	: Updates requirements with poetry"
	@echo " - pyformat : Runs Black to format all python and jupyter files"

install:
	brew install poetry
	poetry install
	poetry shell

update:
	poetry update

pyformat:
	black --line-length=120 .

sqllint:
	# Use \ to ensure that each command is executed in the same shell
	read -p "Directory Path: " path; \
	read -p "SQL Dialect: " lang; \
	echo $$path; \
	echo $$lang; \
	sqlfluff lint $$path --dialect=$$lang

sqlfix:
	read -p "Directory Path: " path; \
	read -p "SQL Dialect: " lang; \
	echo $$path; \
	echo $$lang; \
	sqlfluff fix $$path --dialect=$$lang