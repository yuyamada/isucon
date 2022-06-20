#!/bin/bash

function notify() {
  bash ./discord.sh \
    --webhook-url $WEBHOOK_URL \
    --username discord.sh \
    --text "$(cat -)"
}

# deploy
echo "--- deployment & benchmark started ---" | notify
# git pull
# build & deploy

# benchmark
# QUERY_DIGEST=$(query-digester -duration 60 -stdout)
# BENCH_RESULT=$(ssh $BENCH_HOST $BENCH_COMMAND)

# notify results to discord
echo "--- finished ---" | notify
