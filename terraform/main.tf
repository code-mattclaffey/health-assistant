terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3"
}

provider "aws" {
  region = var.aws_region
}

module "next_app" {
  source  = "open-next/open-next/aws"
  version = "2.4.0"

  name      = var.app_name
  build_dir = "${path.module}/../.open-next"
}
