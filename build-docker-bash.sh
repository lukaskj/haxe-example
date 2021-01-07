#!/bin/bash
docker run --rm -it -v $(pwd):/run --workdir="/run" haxe:4.1-alpine haxe build-executable.hxml