# SQLLint
Repo with boilerplate setup for SQL / Python linting and fixing with SQL Fluff and Black within Poetry.

## Make Commands
### Set Up
```zsh
make setup  Creates venv and installs dependencies. Starts poetry shell by default.
```

### Linting and Fixing
```zsh
make pyformat  Uses black to recursively fix python and jupyter notebooks within a given directory.

make sqllint  Uses sqlfluff (with configs as defined in pyproject.toml) to recursively lint sql files within a given directory.

make sqlfix  Uses sqlfluff to recursively fix sql files based on linting rules (best-practices) within a given directory.
```
