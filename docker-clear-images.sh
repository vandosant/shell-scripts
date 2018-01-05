#!/bin/bash

# clear all except recent images to free up docker disk space
docker images -f "dangling=true" --format "{{.ID}} {{.CreatedSince}}" | grep "weeks ago" | cut -f 1 -d " " | xargs docker rmi
