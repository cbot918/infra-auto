# Infra Auto
a infra automation tool


## description
- auto setup a new environment include  VM/docker


## getting-started:
### Pre-requesties
- install multipass : https://multipass.run/

1. create vm
```
multipass launch --name infra-auto
```
2. list vm ( this step is ignorable )
```
multipass list 
```
3. ssh in vm ( should be in ubuntu@infra-auto )
```
multipass shell infra-auto
```


### Run

1. get repo
```
sudo apt install git && git clone https://github.com/cbot918/infra-auto
```
2. pre-install: wrap below

(1). apt  update

(2). git  config

(3). vim  config

(4). bash config
```
cd infra-auto && ./pre-install.sh
``` 
3. formal install vm

(1). install docker

(2). install language( go / node )
```
make init-vm
```

