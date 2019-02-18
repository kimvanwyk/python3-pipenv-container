FROM python:3-stretch

RUN pip install pipenv

RUN mkdir /app

WORKDIR /app

# Install Pipfile contents system-wide
ONBUILD COPY Pipfile Pipfile
ONBUILD RUN pipenv install --pre --skip-lock --system
