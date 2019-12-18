mkdir config
cp config.yml.example config/config.yml


docker build . -t taos:slackbot

bash bin/run_container.sh

