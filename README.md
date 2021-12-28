# terraform-project

Terraform module to deploy nodejs webapp to AWS Lambda frontend by API Gateway

## How to use


### Create and setup a new project directory

```
mkdir -p helloworld-app
cd helloworld-app
```

### Create a `main.js` file 


### Create a `main.tf` file containing the following:


### Add an `outputs.tf` to display quickly the base URL of the fresh deployed API Gateway. It looks like this:

### Run terraform

```
terraform init
terraform plan
terraform apply
```

Then, go the generated URL displayed in the terraform output.

## BONUS: CI/CD

To automate all of this, you can do it with github actions:

## Configure AWS Credentials

Go to the github repo settings and create secrets for `AWS_ACCESS_KEY_ID`and `AWS_SECRET_ACCESS_KEY`

## Configure github actions

Create a `.github/workflows/terraform.yml` file in your github project

This pipeline will do a terraform fmt/plan for every push on master and pull requests. Apply will be done only on master changes.
