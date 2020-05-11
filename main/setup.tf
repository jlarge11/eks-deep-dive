variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "environment" {}

provider "aws" {
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  region     = "us-east-2"
}

terraform {
  backend "remote" {
    organization = "eks-deep-dive"

    workspaces {
      prefix = "main-"
    }
  }
}

locals {
  region = "us-east-2"
}
