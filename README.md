# go-gin-blog
lean gin blog

# tags api test
## get tags
curl -v '127.0.0.1:8000/api/v1/tags'

## post tag
curl -v -XPOST 'http://127.0.0.1:8000/api/v1/tags?name=1&state=1&created_by=test'
curl -v -XPOST 'http://127.0.0.1:8000/api/v1/tags?name=2&state=1&created_by=test'

## put tag
curl -v -XPUT 'http://127.0.0.1:8000/api/v1/tags/1?name=edit&state=0&modified_by=test'

## delete tag
curl -v -XDELETE 'http://127.0.0.1:8000/api/v1/tags/1'
