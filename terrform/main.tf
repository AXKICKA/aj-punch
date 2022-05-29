terraform {
  backend "s3" {
    bucket = "axkecr-tfstate"
    key    = "tf-circle-ecr-demo"
    region = "us-east-1"
  }
  required_providers {
    circleci = {
      source  = "mrolla/circleci"
      version = "0.6.1"

    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region

}

provider "circleci" {
  api_token    = var.circleci_cli_token
  organization = var.organization

}
