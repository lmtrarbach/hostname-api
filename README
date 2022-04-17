# Hostname API


This repo deploys one small flask application to Minikube using Helm charts and terraform.
The main provider for terraform selected was Helm provider.

## Manual configurations

It was developed in a windows machine. At least in my windows machine was required to run the following commands:
```
minikube start 
```
Also to be able to espose the load balancer using the host machine IP is required to run the following command:
```
minikube tunnel
```
The Dockerfile in the repository root is used by the Github actions pipeline to build the image used.
There's also one action for publish the changes to the Helm charts into Github pages. So we can install the charts via Helm.
Until now I don't added support for automatic pump of docker images version to the Helm charts.

I added one file called minikube_setup.txt that we can rename to minikube_setup.tf and will execute the minikube tunnel step.

## Terraform 
We have only one variable on terraform were we can define the charts name as key and the helm repository as value. 
```
variable "application_name" {
  type = map
  default = {
     "hostname-api" = "https://lmtrarbach.github.io/hostname-api/"
  }
} 
```
We can add another chart as for example MariaDb just adding a new key and value pair charts:
```
variable "application_name" {
  type = map
  default = {
     "hostname-api" = "https://lmtrarbach.github.io/hostname-api/",
     "mariadb"      = "https://charts.bitnami.com/bitnami"
  }
} 
```
Until now there's some password issues from the Maridb repo so if I have time will try to add this mariaDb chart on the code.

## Helm

The helm charts are in the directory charts.
Is a simple chart that I used to deploy. I actually could do it via Teraform but don't felled as the best option for this work. 
Was deined the deployment, service and horizontal pod autoscaler.

## The application

The application is a simple flask answering the requests on the root on the port 8080.
So to reach the endpoint we should request to http://127.0.0.1:8080
There's also a prometheus /metrics endpoints on the application.
If I have sometime will add Grafana as well.
