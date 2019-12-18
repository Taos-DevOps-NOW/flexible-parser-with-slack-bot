CONFIG_PATH="$(pwd)/config"


docker rm slackbot

docker run -it --name slackbot \
  --mount type=bind,source=${CONFIG_PATH},target=/opt/slack/config/,readonly \
  2k:slackbot \
  /bin/bash
