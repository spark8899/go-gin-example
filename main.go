package main

import (
    "fmt"
    "net/http"
    "log"

    "github.com/spark8899/go-gin-example/models"
    "github.com/spark8899/go-gin-example/routers"
    "github.com/spark8899/go-gin-example/pkg/logging"
    "github.com/spark8899/go-gin-example/pkg/setting"
    "github.com/spark8899/go-gin-example/pkg/util"
)

// @title Golang Gin API
// @version 1.0
// @description An example of gin
// @termsOfService https://github.com/spark8899/go-gin-example
// @license.name MIT
// @license.url https://github.com/spark8899/go-gin-example/blob/master/LICENSE
func main() {
    setting.Setup()
    models.Setup()
    logging.Setup()
    util.Setup()

    routersInit := routers.InitRouter()
    readTimeout := setting.ServerSetting.ReadTimeout
	writeTimeout := setting.ServerSetting.WriteTimeout
	endPoint := fmt.Sprintf(":%d", setting.ServerSetting.HttpPort)
	maxHeaderBytes := 1 << 20

	server := &http.Server{
		Addr:           endPoint,
		Handler:        routersInit,
		ReadTimeout:    readTimeout,
		WriteTimeout:   writeTimeout,
		MaxHeaderBytes: maxHeaderBytes,
	}

    log.Printf("[info] start http server listening %s", endPoint)

	server.ListenAndServe()

}
