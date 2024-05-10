terraform {
  backend "s3" {
    bucket                  = "terraform-bucket-statefiles"
    key                     = "my-terraform-project"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = "~/.aws/credentials"
   # version = "5.10.0"
  # access_key = "{{ secrets.AWS_ACCESS_KEY_ID }}"
  # secret_key = "{{ secrets.AWS_SECRET_ACCESS_KEY }}"
  # profile = "default"
  # access_key = ""
  # secret_key = ""
}


terraform {
  required_version = ">=1.0.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=1.0.1"
    }
  }
}