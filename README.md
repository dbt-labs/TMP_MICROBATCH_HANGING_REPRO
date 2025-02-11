# Setup

## Environment
```bash
$ python -m venv venv
$ source venv/bin/activate
$ pip install dbt-snowflake
$ pip install -e ../path/to/dbt-core/core
$ source venv/bin/activate
```

**Note**: It is recommended to have an up to date `dbt-core@main`

## Profile
Add a snowflake based `CORE_654` profile to your  `~/.dbt/profiles.yml`

# Reproduction
1. On branch `main` run `dbt run`
2. `cp -r target old_state`
3. Checkout branch `repro` via `git checkout repro`
   1. you may need to first do a `git fetch origin repro`
4. on branch `repro` run `dbt run --select="state:modified+" --threads=4 --state="old_state" --fail-fast`
   1. can add `--debug` for extra details
   2. should also repro with `--threads=1`