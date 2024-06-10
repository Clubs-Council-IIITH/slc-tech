#!/bin/bash

npm install --prefer-offline --no-audit --progress=true --loglevel verbose
npm run build

cp -r public/* /dist