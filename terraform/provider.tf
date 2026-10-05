provider "aws" {
  
}

terraform {
  backend "s3" {
    bucket = "tf-frontend-resources-gha"
    region = "eu-north-1"    
    key = "github-actions/terraform.tfstate"
    encrypt = true
    dynamodb_table = "tf-frontend-resources-gha-lock"
  }
}