FROM python:3.6

WORKDIR /opt/slack/client

# This expects that the config.yml file has already been created or 
# copied from its required source. File should be mounted at 
# /opt/slack/config/config.yml
COPY . /opt/slack/client

RUN pip install pipenv

RUN pipenv install

# Without a vaild config file, this CMD will throw an error
CMD pipenv run python bot.py
