#!/bin/sh

unset PIP_LOG &&
unset PIP_LOG_FILE &&
pip install --upgrade pip &&
echo "hello" &&
pip install mangadex-downloader --verbose
