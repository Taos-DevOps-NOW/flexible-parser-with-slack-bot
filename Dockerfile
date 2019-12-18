FROM python:3.6

WORKDIR /opt/slack/client

# Copy existing code base to docker image
COPY . /opt/slack/client

RUN pip install pipenv

RUN pipenv install

# Without a vaild config file, this CMD will throw an error
CMD pipenv run python bot.py
