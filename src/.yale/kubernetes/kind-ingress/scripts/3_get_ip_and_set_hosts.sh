echo $(docker container inspect ingress-control-plane --format '{{ .NetworkSettings.Networks.kind.IPAddress }}') hello.yale.com \
>> /etc/hosts

