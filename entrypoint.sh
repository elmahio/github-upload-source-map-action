#!/bin/sh -l

curl -X POST -F Path=$INPUT_PATH -F SourceMap=@$INPUT_SOURCEMAP;type=application/json -F MinifiedJavaScript=@$INPUT_MINIFIEDJAVASCRIPT;type=text/javascript https://api.elmah.io/v3/sourcemaps/$INPUT_LOGID?api_key=$INPUT_APIKEY