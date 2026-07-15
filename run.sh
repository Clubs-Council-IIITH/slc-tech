#!/bin/sh

docker compose -p slc-tech-web up --build

docker compose -p slc-tech-web down
