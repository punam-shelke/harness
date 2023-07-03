resource "aws_s3_bucket" "state_bucket" {
  bucket = local.state_bucket_name

  tags = {
    Name = local.state_bucket_name
  }
}