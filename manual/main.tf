module "harness_bootstrap_project" {
  source = "./harness_bootstrap_project"
}

provider "aws" {
  region = local.region
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = var.HARNESS_ACCOUNT_ID
  platform_api_key = var.HARNESS_PLATFORM_API_KEY
}

terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
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
