# infra-auto
a infra automation tool


## description
auto setup a new environment include  VM/docker

## environment
current support: Linux Ubuntu 20

## usecase
### pre-requesties: 
- linux ubuntu 20
- git

### getting-started:
- in a new ubuntu vm (suggest multipass)
https://multipass.run/
```
$ sudo apt install git && git clone https://github.com/cbot918/infra-auto
$ cd infra-auto && ./pre-install.sh
$ make init-vm
```

