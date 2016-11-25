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
[Configuration File](https://github.com/zxbtony/Shadowsocks_Dockerfile/blob/master/conf/conf.json)
```sh
$ docker run --rm -p 8888:1234 -v ~/conf:/conf zxbtony/shadowsocks_server -c /conf/conf.json 
```

* Run local client and HTTP Proxy
[Configuration File](https://github.com/zxbtony/Shadowsocks_Dockerfile/blob/master/conf/conf_client.json)
```sh
$ docker run -p 8080:8118 -v ~/conf:/conf zxbtony/shadowsocks_server --entrypoint="/bin/sh" -c "apk --update add privoxy && sed -i'' 's/127\.0\.0\.1:8118/0\.0\.0\.0:8118/' /etc/privoxy/config && echo 'forward-socks5 / 127.0.0.1:1080 .' >> /etc/privoxy/config && privoxy /etc/privoxy/config && sslocal -c /conf/conf_client.json" 
```
### Acknowledgement
[Shadowsocks](https://github.com/shadowsocks/shadowsocks/tree/master)
