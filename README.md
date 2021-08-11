# elmah.io Upload Source Map Action

GitHub Action to upload a source map on elmah.io

For the full documentation check out [Source maps](https://docs.elmah.io/sourcemaps/).

## Inputs

## `apiKey`

**Required** An API key with permission to upload source maps.

## `logId`

**Required** The ID of the log which should contain the minified JavaScript and source map.

## `path`

**Required** An URL to the online minified JavaScript file. The URL can be absolute or relative but will always be converted to a relative path (no protocol, domain, and query parameters). elmah.io uses this path to lookup any lines in a JS stack trace that will need de-minification.

## `sourceMap`

**Required** A path to the source map file. Only files with an extension of .map and content type of application/json will be accepted.

## `minifiedJavaScript`

**Required** A path to the minified JavaScript file. Only files with an extension of .js and content type of text/javascript will be accepted.

## Example usage

Here's an example of how to use this action:

```yml
uses: elmahio/github-upload-source-map-action@v1
with:
  apiKey: ${{ secrets.ELMAH_IO_API_KEY }}
  logId: ${{ secrets.ELMAH_IO_LOG_ID }}
  path: '/bundles/sharedbundle.min.js'
  sourceMap: 'path/to/sharedbundle.map'
  minifiedJavaScript: 'path/to/sharedbundle.min.js'
```