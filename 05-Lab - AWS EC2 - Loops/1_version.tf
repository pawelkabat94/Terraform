#Terraform Block
terraform {
 required_version = "v1.7.0"
required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}
#Terraform Provider
provider "aws" {
 region = var.aws_region
}
