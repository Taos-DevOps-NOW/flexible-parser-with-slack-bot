mkdir config
cp config.yml.example config/config.yml


docker build . -t 2k:slackbot

bash bin/run_container.sh

