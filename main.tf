terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17.0"
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
