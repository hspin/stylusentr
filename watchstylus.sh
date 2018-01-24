#!/usr/bin/env bash

ls ./out/*.css | entr tmux load-buffer -b tmp-copy-buffer ./out/styles.css
