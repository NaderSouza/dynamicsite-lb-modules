terraform {
  backend "s3" {
    bucket = "dynamic-bucket-terraform-v2"
    key    = "backend/terraform.tfstate"
    region = "us-east-1"
  }
}

