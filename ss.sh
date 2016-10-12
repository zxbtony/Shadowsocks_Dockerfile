#!/bin/bash

# help function to operate docker container 
del_stopped(){
	if [[ $# -ne 1 ]];then
		echo Usage: dm_del_stopped IMAGE_NAME 
		return
	fi

	local container=$1
	if [[ `docker inspect --format "{{.State.Running}}" $container 2>/dev/null` == "false" ]]; then
		echo -n "Deleted Stopped Container:" 
		docker rm $container
	fi
}

ss{
	del_stopped ss
	docker run -d -p 1234:1234 --name ss shadowsocks -c /conf.json
}

rmss{
	docker rm -f ss
}