#!/bin/bash

sass --scss -t compact -l -r ./static/remove-comments.rb --watch static/style.scss:static/style.css &

SASS_PID=$!

python main.py

kill $SASS_PID
