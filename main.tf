module "s3_buckets" {
  source = "./s3"
}

provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "demo-state-bucket"
    key    = "all-resource-state-file.tfstate"
    region = "ap-south-1"
  }
}
