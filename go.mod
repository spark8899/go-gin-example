module github.com/spark8899/go-gin-example

go 1.17

require (
	github.com/360EntSecGroup-Skylar/excelize v1.4.1
	github.com/astaxie/beego v1.12.3
	github.com/boombuler/barcode v1.0.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/gin-gonic/gin v1.7.7
	github.com/go-ini/ini v1.66.2
	github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0
	github.com/gomodule/redigo v2.0.0+incompatible
	github.com/jinzhu/gorm v1.9.16
	github.com/robfig/cron v1.2.0
	github.com/swaggo/gin-swagger v1.3.3
	github.com/swaggo/swag v1.7.6
	github.com/tealeg/xlsx v1.0.5
	github.com/unknwon/com v1.0.1
)

require (
	github.com/KyleBanks/depth v1.2.1 // indirect
	github.com/PuerkitoBio/purell v1.1.1 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.19.6 // indirect
	github.com/go-openapi/spec v0.20.4 // indirect
	github.com/go-openapi/swag v0.19.15 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/go-sql-driver/mysql v1.6.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826 // indirect
	github.com/shiena/ansicolor v0.0.0-20200904210342-c7312218db18 // indirect
	github.com/ugorji/go/codec v1.2.6 // indirect
	golang.org/x/crypto v0.0.0-20211215153901-e495a2d5b3d3 // indirect
	golang.org/x/image v0.0.0-20211028202545-6944b10bf410 // indirect
	golang.org/x/net v0.0.0-20211216030914-fe4d6282115f // indirect
	golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect
	golang.org/x/text v0.3.7 // indirect
	golang.org/x/tools v0.1.8 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace (
	github.com/spark8899/go-gin-example/conf => ./conf
	github.com/spark8899/go-gin-example/middleware/jwt => ./middleware/jwt
	github.com/spark8899/go-gin-example/models => ./models
	github.com/spark8899/go-gin-example/pkg/app => ./pkg/app
	github.com/spark8899/go-gin-example/pkg/e => ./pkg/e
	github.com/spark8899/go-gin-example/pkg/export => ./pkg/export
	github.com/spark8899/go-gin-example/pkg/file => ./pkg/file
	github.com/spark8899/go-gin-example/pkg/gredis => ./pkg/gredis
	github.com/spark8899/go-gin-example/pkg/logging => ./pkg/logging
	github.com/spark8899/go-gin-example/pkg/qrcode => ./pkg/qrcode
	github.com/spark8899/go-gin-example/pkg/setting => ./pkg/setting
	github.com/spark8899/go-gin-example/pkg/upload => ./pkg/upload
	github.com/spark8899/go-gin-example/pkg/util => ./pkg/util
	github.com/spark8899/go-gin-example/routers => ./routers
	github.com/spark8899/go-gin-example/service/article_service => ./service/article_service
	github.com/spark8899/go-gin-example/service/auth_service => ./service/auth_service
	github.com/spark8899/go-gin-example/service/cache_service => ./service/cache_service
	github.com/spark8899/go-gin-example/service/tag_service => ./service/tag_service
)
