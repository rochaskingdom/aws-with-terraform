terraform {
  required_version = "1.0.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.48.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "2.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}