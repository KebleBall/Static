#!/bin/bash

rm -r build

sass --scss -t compact -l -r ./static/remove-comments.rb static/style.scss static/style.css

python freeze.py

find build -name "*.scss" -delete
find build -name "*.scssc" -delete

find build -type d -empty -delete

rm build/static/remove-comments.rb
rm build/static/style.css.map

echo "gitdir: ../git" > build/.git
