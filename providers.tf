terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn     = var.role_arn
    session_name = var.role_session_name
  }
}

data "aws_availability_zones" "available" {}

