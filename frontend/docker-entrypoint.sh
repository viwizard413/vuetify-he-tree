#!/bin/bash

if [ ! -d /frontend/vuetify-project ]; then
    sleep 86400
fi
cd /frontend/vuetify-project
yarn install
yarn run dev --host
