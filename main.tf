module "s3_buckets" {
  source = "./s3"
}

provider "aws" {
  region = local.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "demo-state-bucket"
    key    = "all-resource-state-file.tfstate"
    region = "ap-south-1"
  }
}
