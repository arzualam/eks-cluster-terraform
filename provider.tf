provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.46.0"
  }
    tls = {
      source = "hashicorp/tls"
      version = "~> 4.0.4"
  }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.16.1"
  }
 }
}
