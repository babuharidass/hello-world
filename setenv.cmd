SET DOCKER_TLS_VERIFY=1
SET DOCKER_HOST=tcp://127.0.0.1:63858
SET DOCKER_CERT_PATH=C:\Users\babuh\.minikube\certs
SET MINIKUBE_ACTIVE_DOCKERD=minikube
@FOR /f "tokens=*" %i IN ('minikube -p minikube docker-env') DO @%i