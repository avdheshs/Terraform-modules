resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = var.acl

  tags = {
    Name = "MyS3Bucket"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
