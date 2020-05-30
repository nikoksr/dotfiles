#!/usr/bin/env bash

# Create react app
yarn create react-app --typescript .

# Install eslint
yarn add @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint-plugin-react --dev

# Install prettier
yarn add prettier eslint-config-prettier eslint-plugin-prettier --dev

# Add eslint and prettier configs to git
git add . >/dev/null
git commit -m "build: add eslint and prettier" >/dev/null

