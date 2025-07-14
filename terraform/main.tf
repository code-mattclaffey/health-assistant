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
  source    = "RJPearson94/open-next/aws//modules/tf-aws-open-next-zone"
  version   = ">= 3.6.0"
  prefix    = "ai-health-assistant-production-3"
  folder_path = "../.open-next"

  providers = {
    aws              = aws
    aws.global       = aws
    aws.iam          = aws
    aws.dns          = aws
    aws.server_function = aws
  }
}
