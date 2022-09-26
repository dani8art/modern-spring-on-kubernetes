#!/bin/bash
set -x
./mvnw clean package -DskipTests
docker build . -f Dockerfile-alpine -t boot-jlink-layers-alpine:1
docker images boot-*