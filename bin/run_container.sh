CONFIG_PATH="$(pwd)/config"


docker rm slackbot

docker run -d -it --name slackbot \
  --mount type=bind,source=${CONFIG_PATH},target=/opt/slack/config/,readonly \
  taos:slackbot
