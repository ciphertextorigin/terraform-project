provider "aws" {
  region = "us-east-1"
}

module "lambda-apigw-module" {
  source  = "jeremygovi/lambda-apigw-module/aws"
  version = "0.0.3"
  project_name          = "helloworld-app"
  source_path           = "./main.js"
  lambda_function_name  = "my_lambda_function_name"
  #lambda_runtime        = "python3.8"
  lambda_runtime        = "nodejs12.x"
  api_gateway_name      = "helloworld-app-api-gw"
  environment_variables = {
    customEnvVariable = "prod" 
  }
}

  
  
