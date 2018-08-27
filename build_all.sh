#!/usr/bin/env bash
set -e

echo "Building publishing app"
docker build ~/projects/dippa/dippa-publish -t publish

echo "Building google facial recognition"
docker build ~/projects/dippa/dippa-facerec -t google_image

echo "Building IBM text recognition"
docker build ~/projects/dippa/dippa-nlp -t ibm_text

echo "Building writer"
docker build ~/projects/dippa/dippa-writer -t writer
