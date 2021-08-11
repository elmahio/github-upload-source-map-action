#!/bin/sh -l

curl --location --request POST "https://api.elmah.io/v3/sourcemaps/$INPUT_LOGID?api_key=$INPUT_APIKEY" \
--header 'Content-Type: multipart/form-data' \
--form Path=$INPUT_PATH \
--form SourceMap=$INPUT_SOURCEMAP \
--form MinifiedJavaScript=$INPUT_MINIFIEDJAVASCRIPT