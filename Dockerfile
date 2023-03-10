FROM python:3.11

WORKDIR /usr/src/app

# Install dependencies
RUN pip install --upgrade --no-cache-dir pip setuptools
RUN pip install --no-cache-dir pipenv autopep8

# Install app dependencies
COPY Pipfile Pipfile.lock ./
RUN pipenv install
