Usage
-----

Start the minikube cluster using below command
-----
```
minikube start
```

setup the minikube docker environments
-----
```
minikube -p minikube docker-env

SET DOCKER_TLS_VERIFY=1
SET DOCKER_HOST=tcp://127.0.0.1:63858
SET DOCKER_CERT_PATH=C:\Users\babuh\.minikube\certs
SET MINIKUBE_ACTIVE_DOCKERD=minikube
REM To point your shell to minikube's docker-daemon, run:
@FOR /f "tokens=*" %i IN ('minikube -p minikube docker-env') DO @%i

```
Docker Image build
-----
```
docker build . -t application/equal-experts-sample
```
Once build image will be checked using below command:-

```
docker images application/equal-experts-sample
```

Kubernetes application deployment steps
----

namespace, service account, cluster role, cluster role binding, service and deployment objects 
are getting created.
```
kubectl create -f namespace.json
kubectl apply -f serviceaccount.yaml
kubectl apply -f clusterrole.yaml
kubectl apply -f clusterrole-binding.yaml
kubectl apply -f service.yaml
kubectl apply -f deployment.yaml

```

Kubernetes deployment verification commands.
----

```
kubectl -n platform get all
kubectl -n platform describe service equal-experts-sample
```

Testing the application.
----
Execute the below command to create ssh tunnelling for testing the application
and copy the service URL into browser for testing the application.

Example result will be : Hello World : equal-experts-sample-fcdb8cb7d-57lbf

```
minikube service --url equal-experts-sample -n platform
```

Deleting the Kubernetes pods objects
----

namespace, service account, cluster role, cluster role binding, service and deployment objects 
are getting created.
```
kubectl delete -f deployment.yaml
kubectl delete -f service.yaml
kubectl delete -f clusterrole-binding.yaml
kubectl delete -f clusterrole.yaml
kubectl delete -f serviceaccount.yaml
kubectl delete -f namespace.json

```