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




# tutorial
YT ( older version / minikube addon ingress)
https://www.youtube.com/watch?v=80Ew_fsV4rM&t=64s
Blog ( ingress-nginx)
https://www.devopsschool.com/tutorial/kubernetes/kubernetes-ingress-tutorial.html