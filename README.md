# actions-lint-python

Composite action to lint python files.

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
      - name: Set up Python ${{ matrix.python-version }}
        uses: actions/setup-python@v1
        with:
          python-version: ${{ matrix.python-version }}
      - name: Python linting
        uses: moj-analytical-services/actions-lint-python@v1.0.1
 ```
 
