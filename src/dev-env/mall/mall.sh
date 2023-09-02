mall(){

  sudo cp document/docker/nginx.conf /mydata/nginx/

  sudo mkdir /mydata/mysql/conf/mysql.conf.d
  sudo mkdir /mydata/mysql/conf/conf.d

  docker-compose -f docker-compose-env.yml up

  

}
mall