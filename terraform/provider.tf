provider "aws" {
  region = "eu-north-1"
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tf-frontend-resources-gha"
    region = "eu-north-1"    
    key = "github-actions/terraform.tfstate"
    encrypt = true
    use_lockfile = true
  }
}