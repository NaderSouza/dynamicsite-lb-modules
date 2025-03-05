# PROVIDER
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.55"
    }
  }

}

provider "aws" {
  region = "us-east-1"

}
