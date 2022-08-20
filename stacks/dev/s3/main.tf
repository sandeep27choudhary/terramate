resource "aws_s3_bucket" "private" {
  bucket = var.name
  force_destroy = var.force_destroy_s3
}

resource "aws_s3_bucket_public_access_block" "s3Public" {
bucket = "${aws_s3_bucket.private.id}"
block_public_acls = var.bpa
block_public_policy = var.bpp
restrict_public_buckets = var.rpb
ignore_public_acls = var.ipa
}