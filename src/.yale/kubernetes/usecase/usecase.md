# add ingress controller
```
minikube addons enable ingress
kubectl get pod -n kube-system
```


# setting local machine hostname
vim etc/hostname
```
192.168.49.2    test.com
```