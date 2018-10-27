#!/usr/bin/env bash
set -e

echo "Building publishing app"
docker build --no-cache ~/projects/dippa/dippa-publish -t publish

echo "Building google facial recognition"
docker build --no-cache ~/projects/dippa/dippa-facerec -t google_image

echo "Building IBM text recognition"
docker build --no-cache ~/projects/dippa/dippa-nlp -t ibm_text

echo "Building writer"
docker build --no-cache ~/projects/dippa/dippa-writer -t writer

echo "Building front"
docker build --no-cache ~/projects/dippa/dippa-front -t front

echo "Building vis"
docker build --no-cache ~/projects/dippa/dippa-vis -t vis
