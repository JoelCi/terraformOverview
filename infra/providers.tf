terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
  backend "s3" {
    bucket = var.bucketBackendName
    key    = "state/terraform.tfstate"
  }
}


provider "aws" {
  region = var.region
}
