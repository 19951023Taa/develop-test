terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.35.0"
    }
  }
  backend "s3" {
  }
}

provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      "Env" = var.ENV
      "Sys" = local.SYSTEM
    }
  }
}

data "aws_caller_identity" "this" {}