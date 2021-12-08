# Subscription System

## The technologies used are:
* Java
* Gradle
* Docker
* Kubernetes

## Required tool installations

* Java JDK [download](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
* Gradle [download](https://gradle.org/install/)
* Git executable [download](https://git-scm.com/downloads)
* Docker [download](https://www.docker.com/get-started)

## Architecture

![alt docker-desktop](/images/subscription-system.png)

## File System


``` 
├──subscription-system
|   └── configuration-service
|   └── edge-service
|   └── email-service
|   └── subscription-deployment
|   └── subscription-service
```

## Kubernetes with Kind

kubectl port-forward service/keycloak 8080:9080

./create-cluster.sh

./deploy-platform.sh

./deploy-apps.sh
 
./destroy-cluster.sh
