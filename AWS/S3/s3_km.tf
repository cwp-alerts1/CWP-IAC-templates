
resource "aws_s3_bucket" "s3_km" {
  bucket = "examplebuckettftest"
  acl    = "private"
  key    = "someobject"
  server_side_encryption = "aws:kms"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
  object_lock_configuration {
    object_lock_enabled = "Enabled"
  }

}
