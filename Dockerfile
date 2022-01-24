FROM python:3.9-slim

COPY entrypoint.sh /entrypoint.sh

RUN python -m pip install --upgrade pip
RUN python -m pip install flake8

ENTRYPOINT ["/entrypoint.sh"]
