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

Clone into the subscription-system file all the microservices listed below:

```   
git clone https://github.com/cbuelvasc/configuration-service.git
```   

```   
git clone https://github.com/cbuelvasc/edge-service.git
```   

```   
git clone https://github.com/cbuelvasc/email-service.git
```   

```   
git clone https://github.com/cbuelvasc/subscription-service.git
```   

The file system should be as follows: 
``` 
├──subscription-system
|   └── configuration-service
|   └── edge-service
|   └── email-service
|   └── subscription-deployment
|   └── subscription-service
```

## Kubernetes with Kind

Execute deployment with Kubernetes:

``` 
cd subscription-deployment/kubernetes/
``` 

``` 
./create-cluster.sh
```

```
./deploy-platform.sh
```

```
kubectl port-forward service/keycloak 8080:9080
```

```
./deploy-apps.sh
 ```

```
./destroy-cluster.sh
``` 