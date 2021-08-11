#!/bin/sh -l

echo $INPUT_LOG_ID
echo $INPUT_API_KEY
echo $INPUT_PATH
echo $INPUT_SOURCEMAP
echo $INPUT_MINIFIEDJAVASCRIPT

curl --location --request POST "https://api.elmah.io/v3/sourcemaps/$INPUT_LOG_ID?api_key=$INPUT_API_KEY" \
--header 'Content-Type: multipart/form-data' \
--form Path=$INPUT_PATH \
--form SourceMap=$INPUT_SOURCEMAP \
--form MinifiedJavaScript=$INPUT_MINIFIEDJAVASCRIPT