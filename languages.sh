#!/bin/bash

LANGUAGES=("en" "he" "ru")

echo "start to install languages ..."
for lang in "${LANGUAGES[@]}";
do
    sudo apt-get -y install 'check-language-support -l @lang'
done
echo "finished!"

echo "start to install languages ..."
for lang in "${LANGUAGES[@]}";
do
    sudo apt-get -y install 'check-language-support -l @lang'
done
echo "finished!"