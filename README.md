# SQLLint
Repo with boilerplate setup for SQL / Python linting and fixing with SQL Fluff and Black within Poetry.

## Make Commands
### Set Up
```zsh
make install  Creates venv and installs dependencies. Starts poetry shell by default.
```

### Linting and Fixing
```zsh
make pylint  Uses flake8 to lint and count bugs, code smells, etc. within a given directory.

make pyformat  Uses black to recursively format python and jupyter notebooks within a given directory.

make sqllint  Uses sqlfluff (with configs as defined in pyproject.toml) to recursively lint sql files within a given directory.

make sqlformat  Uses sqlfluff to recursively format sql files based on linting rules (best-practices) within a given directory.
```
