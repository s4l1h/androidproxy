```
pkg install git
git clone --recurse-submodules https://github.com/s4l1h/androidproxy
```

***After cloning respository You need to modify variables for your server.***

## Changing proxy server user and password 
(default username & password are ***akm*** and local proxy port ***3120***)

[proxy/main.go](https://github.com/s4l1h/androidproxy/blob/master/proxy/main.go#L15)

## Changing frpc config ( you must change!)
(default remote proxy port ***7499*** and ssh port ***7498***)

[proxy/frpc.ini](https://github.com/s4l1h/androidproxy/blob/master/frpc.ini#L2,L4)


***for more details please look at [frp docs](https://github.com/fatedier/frp).***

cd androidproxy; sh install.sh

![Diagram](diagram.svg)

