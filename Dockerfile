FROM python:3.11

WORKDIR /usr/src/app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install pipenv
RUN pip install autopep8

# Install app dependencies
COPY Pipfile Pipfile.lock ./
RUN pipenv install

ENTRYPOINT [ "pipenv", "run", "python", "main.py" ]