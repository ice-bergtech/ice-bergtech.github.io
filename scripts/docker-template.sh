#!/bin/sh
echo "File: $FILE";
docker run --rm \
    -v $(pwd)/templates:/templates \
    -v $(pwd)/config:/vars \
    -v $(pwd)/generated:/generated \
    dinutac/jinja2docker:latest \
    /templates/$FILE.tpl /vars/config.yml --format=yml > generated/$FILE