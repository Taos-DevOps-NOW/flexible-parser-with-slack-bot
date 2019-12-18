mkdir config
cp config.yml.example config/config.yml

CONFIG_PATH="$(pwd)/config"

docker build . -t 2k:slackbot
docker rm slackbot
docker run -d -it --name slackbot \
  --mount type=bind,source=${CONFIG_PATH},target=/opt/slack/config/,readonly \
  2k:slackbot
