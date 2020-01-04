package main

import (
	"log"
	"net/http"

	"github.com/elazarl/goproxy"
	"github.com/elazarl/goproxy/ext/auth"
)

func main() {
	proxy := goproxy.NewProxyHttpServer()

	auth.ProxyBasic(proxy, "my_realm", func(user, pwd string) bool {
		return user == "akm" && pwd == "akm"
	})
	proxy.Verbose = false
	log.Fatal(http.ListenAndServe(":3120", proxy))
}
