terraform {
  required_version = "1.1.7"
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}


