kubectl run hello \
  --expose \
  --image nginxdemos/hello:plain-text \
  --port 80