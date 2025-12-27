terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.24.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

provider "aws" {
  # Configuration options
  region = "us-east-2"
  alias = "ohio"
}