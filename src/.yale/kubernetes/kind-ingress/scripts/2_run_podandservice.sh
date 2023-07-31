kubectl run hi \
  --expose \
  --image cbot918/hi \
  --port 3334

kubectl run hello \
  --expose \
  --image cbot918/hello \
  --port 3333