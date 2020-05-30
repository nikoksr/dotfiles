#!/usr/bin/env bash

# Create react app
npx create-react-app .

# Install eslint and prettier
npm i prettier-eslint eslint-config-prettier

# Init eslint
eslint --init

# Add eslint and prettier configs to git
git add . >/dev/null
git commit -m "build: add eslint and prettier" >/dev/null

