#!/bin/bash

set -euo pipefail

cd ./extensions/example-extension

rm -f extension.zip

cd ./nodejs-example-extension

chmod +x index.js

npm install

cd ..

chmod +x nodejs-example-extension

zip -r extension.zip .

echo "Extension correctly zipped!"
