resource "aws_s3_bucket" "s3_versioning" {
  bucket = "examplebuckettftest"
  acl    = "public-read-write"
  versioning {
    enabled = false
  }
}
