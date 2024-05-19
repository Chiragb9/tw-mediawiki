This repo contains the code for running the mediawiki application on Linux (Ubuntu) based Docker Image on Azure Kubernetes Service.
===================================================================================================================================

GitHub Actions Secrets
======================

ADD AZURE CREDENTIALS IN GITHUB SECRETS

1) AZURE_CLIENT_ID	-> Application (client) ID
2) AZURE_TENANT_ID	-> Directory (tenant) ID
3) AZURE_SUBSCRIPTION_ID	-> Subscription ID


To push new Image to Docker Hub

4) DOCKER_PASS  -> Docker Hub Password 

Also accordingly change docker push command in ".github/workflows/change-prod-env.yaml"


Files 
======

1) /infra -> contains terraform files for Azure Cloud Infrastructure

2) /helm  -> contains Helm charts for kubernetes object

  1) /blue  -> contains the deployment file(s) for Blue environment.
  2) /green -> contains the deployment file(s) for Green environment.
  3) setup.sh files contains initial commands to setup the kubernetes objects on the kubernetes cluster.

3) /src -> contains Dockerfile and required shell script for fetching source and installing dependencies

-------------------------------------------------------------------------------------------------------------------------------------

GitHub Actions Workflows
========================

1) The Kubernetes Service (Load Balancer) can be switched between Blue and Green Deployments to acheive Blue-Green Deployment Strategy
using the "Change Prod Environment" GitHub Actions Workflow.

2) The "Manual Code Deploy" GitHub Actions Workflow can be used to build and deploy new Docker Image (with Image Tag) to Docker Hub and 
deploy the same to the Kubernetes deployment (blue or green) of choosing

3) The "Run Helm Setup" GitHub Actions Workflow can be used to install helm chart on AKS.

4) The "Terraform" Workflow can be used to deploy terraform code to AKS

GitHub Actions uses a federated service prinicipal to interact with Azure Cloud.