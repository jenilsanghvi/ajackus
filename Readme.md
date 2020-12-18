# Assignment - DevOps Assignment 

   `Problem Statement - Deploy a containerized react application[React- Calc](https://github.com/ahfarmer/calculator) to a Kubernetes cluster using Minikube`



# Solution 
 ## Files created - 
 1. Dockerfile
 2. deployment.yml
 3. service.yml

## Software installed/required

 - Docker for windows
 - Kubernetes
 - Minikube

## Steps - 

 1. Created a docker file from the node alpine image, reasons to choose it
      1.  Lightweight
      2. Node installed
      3. npm pre-configured
 2.  Built a docker image & tagged it as labtest
 3. Run the local image with `docker run -d -p 80:3000 labtest:latest`
 4. Checked if the app is working fine on `localhost`
 5. Started minikube
 6. Switched the docker workspace to minikube `minikube docker-ps`
 7. Created a deployment file to spin up pods
 8. Created a service file to expose the pods
 9. Ran the minikube command to expose it to localhost `minikube service calc-app --url=false`
 10. Voila! have the app running on local using minikube

## Contents of Dockerfile

 1. Started from a base image of node with tag alpine 
 2. Cloned the code from GitHub using git clone [url](https://github.com/ahfarmer/calculator)
 3. Set the workdirectory to calculator (directory where the code is cloned)
 4. Run npm build
 5. Exposed the port on 3000
 6. Set the entrypoint command to npm start