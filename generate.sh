#!/bin/bash

ROOT_DIR=$(pwd)
DOCS_DIR=$ROOT_DIR/docs
cd $DOCS_DIR

# Persian-vocabulary-in-UXwriting repository
rm -rf persian-vocabulary-in-uxwriting
git clone https://github.com/Aylarrazzaghi/Persian-vocabulary-in-UXwriting
cd  Persian-vocabulary-in-UXwriting
git checkout-index  -f --prefix=../persian-vocabulary-in-uxwriting/ README.md
cd ..
rm -rf Persian-vocabulary-in-UXwriting

# Common-mistakes-in-Farsi repository
rm -rf common-mistakes-in-Farsi
git clone https://github.com/Aylarrazzaghi/Common-mistakes-in-Farsi
cd  Common-mistakes-in-Farsi
git checkout-index  -f --prefix=../common-mistakes-in-Farsi/ README.md
cd ..
rm -rf Common-mistakes-in-Farsi


if [[ $(git status --porcelain) ]]; then
  echo "There are changes."
  git config --global user.email "github-actions[bot]@users.noreply.github.com"
  git config --global user.name "GitHub Action"
  git add .
  git commit -m "Update the website information"
  git push --set-upstream origin main
else
  echo "There are no changes."
fi

