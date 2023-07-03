resource "aws_s3_bucket" "s3_storage" {
  for_each = toset(local.bucket_names)
  bucket   = each.value

  tags = {
    Name = each.value
  }
}
