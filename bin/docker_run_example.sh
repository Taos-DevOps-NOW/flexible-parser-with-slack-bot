docker run -d -it --name slackbot \
  --mount type=bind,source=/home/rmeyer/dev/2k/config.yml,target=/opt/slack/config/config.yml,readonly \
  rmeyertaos/checkmk-slackbot:1.0
