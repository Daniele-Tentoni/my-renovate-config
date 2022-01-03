#!/usr/bin/env bash
for file in *.json
do
  echo "[CI] Let's validate $file"
  RENOVATE_CONFIG_FILE=${file} npx --package renovate -c 'renovate-config-validator'
done
