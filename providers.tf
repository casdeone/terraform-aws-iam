#create providers
terraform {
  required_version = ">= 0.15"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  cloud {
    organization = "denniscastillo"
    workspaces {
      name = "terraform-aws-iam"
    }
  }

}

provider "aws" {
  region = var.region
  assume_role {
    role_arn     = var.assume_role_arn
    session_name = var.role_session_name
  }

}
