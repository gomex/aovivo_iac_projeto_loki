terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.16.1"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "descomplicando-packer-aovivo-maio"
    key    = "iac-test"
    region = "us-east-1"
  }
}
