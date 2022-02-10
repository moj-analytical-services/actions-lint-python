# actions-lint-python

Composite action to lint python files using `flake8`, which can either be
configured with a `.flake8` in the root of your repo oe the standard
data engineering configuration found in https://github.com/moj-analytical-services/.github
will be used.

Example usage:
```
jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      max-parallel: 4
      matrix:
        python-version: [3.7, 3.8, 3.9]
    steps:
      - uses: actions/checkout@v2
      - name: Python linting
        uses: moj-analytical-services/actions-lint-python@main
        with:
          python-version: ${{ matrix.python-version }}
 ```
 
