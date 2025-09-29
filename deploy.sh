#!/bin/bash

docker compose -f docker-compose.prod.yml -p slc-tech-web-prod up --build -d 

