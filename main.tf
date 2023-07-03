module "state_bucket" {
  source = "./s3"
}

provider "aws" {
  region = local.region
}
