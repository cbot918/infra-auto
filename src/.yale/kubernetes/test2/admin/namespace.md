```
<!-- kubc get namespaces --show-labels -->

kubectl config view

kubectl config set-context dev --namespace=development --cluster=minikube --user=miniku 

kubectl config set-context prod --namespace=production --cluster=minikube --user=miniku 

kubectl config use-context dev

kubectl config current-context

```