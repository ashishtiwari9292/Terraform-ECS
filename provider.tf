# provider.tf
# Specify the provider and access details
terraform {
  required_version = ">=1.0.1"
  required_providers {
      aws = {
      source  = "hashicorp/aws"
      version = ">=1.0.1"
    }
  }
}

provider "aws" {
#   shared_credentials_file = "$HOME/.aws/credentials"
  # version = "5.10.0"
  # access_key = "{{ secrets.AWS_ACCESS_KEY_ID }}"
  # secret_key = "{{ secrets.AWS_SECRET_ACCESS_KEY }}"
  # profile    = "default"
  # access_key = ""
  # secret_key = ""
  region     = var.aws_region
}

