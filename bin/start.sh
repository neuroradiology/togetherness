#! /bin/bash

set -e

if [ `basename $(pwd)` != "togetherness" ]; then
  echo "You must be in the togetherness directory to run this command"
  exit 1
fi

echo "Starting togetherness on port 8000"
echo "      ---------------------"
echo "Paste http://localhost:8000 into your browser"
echo "      ---------------------"

docker run --rm \
  -it \
  -p 8000:80 \
  -v $PWD:/app \
  --workdir=/app/src \
  python:2 \
  python -m SimpleHTTPServer 80

