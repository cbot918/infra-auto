# Pre Install

setup fundemental tool

## Package
- apt update
- git
- vim
- make
- curl

## Config
- ~/.vimrc
```
set tabstop=2
set shiftwidth=2
set autoindent
```
- ~/.bashrc
```
alias sou="source ~/.bashrc"

if [ -f ~/.yale/.bash_yale ]; then
. ~/.yale/.bash_yale
fi
```

- git config ( username / email )
```
git config --global user.name "cbot918"
git config --global user.email "cbot918@gmail.com"

```

<br>
<hr>
<br>

## Other
- .yale/.bash_yale
```
functions:

- remu: remove multipass instance and recreate one 

- gpush: add all file, commit with param then push

- listp: grep port with param

- killp: kill port with param

- dlsi:  list docker with grep param

- dlsc:  grep running container with param

- dlsca: grep container with param

- drmc:  remove container with param

- drmi:  remove image with param

- drun:  run a container 

- dshsh: ssh to container sh

- dshba: ssh to container bash

- pio:   create once alpine container

- ubuo:  create once ubuntu container

- pi:    create alpine container

- ubu:   create ubuntu container


```
- .yale/docker-network
```
to be describe
```