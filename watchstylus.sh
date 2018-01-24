#!/usr/bin/env bash

if [[ "$TERM" =~ "screen".* ]]; then
  echo "Inside tmux"
  echo "starting..."
else
  echo "We are not in TMUX!"
  # Launches tmux in a session called 'base'.
  # tmux attach -t base || tmux new -s base
  echo "exiting"
  exit
fi

ls out/*.css | entr tmux load-buffer -b tmp-copy-buffer out/styles.css
