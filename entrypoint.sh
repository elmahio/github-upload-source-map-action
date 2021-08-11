#!/bin/sh -l

curl --location --request POST https://api.elmah.io/v3/sourcemaps/$INPUT_LOGID?api_key=$INPUT_APIKEY \
-F Path=$INPUT_PATH \
-F SourceMap=@$INPUT_SOURCEMAP;type=application/json \
-F MinifiedJavaScript=@$INPUT_MINIFIEDJAVASCRIPT;type=text/javascript