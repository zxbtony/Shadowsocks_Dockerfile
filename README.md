# Shadowsocks in Docker

A fast tunnel proxy that helps you bypass firewalls.
Features:
- TCP & UDP support
- User management API
- TCP Fast Open
- Workers and graceful restart
- Destination IP blacklist

### Usage
* Run Shadowsocks Server
```sh
$ docker run -p 8888:1234 -v conf.json:/conf.json zxbtony/shadowsocks_server -c /conf.json 
```

* Run local client and HTTP Proxy
```sh
$ docker run -p 8888:1234 -v conf.json:/conf.json zxbtony/shadowsocks_server -c /conf.json 
```
### Acknowledgement
[Shadowsocks](https://github.com/shadowsocks/shadowsocks/tree/master)
