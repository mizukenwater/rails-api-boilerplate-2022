#!/bin/bash
docker compose build && docker compose run --rm app rails new . -d mysql --api -M -C -S -J --skip-spring --skip-turbolinks --skip-webpack-install -T --minimal