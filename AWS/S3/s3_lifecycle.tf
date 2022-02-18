resource "aws_s3_bucket" "s3_lifecycle" {
  bucket = "examplebuckettftest"
  acl    = "public-read-write"
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
}
