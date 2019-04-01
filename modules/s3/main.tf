provider "aws" {
  region  = "${var.aws_region}"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket_name}"
  acl    = "${var.bucket_acl}"

  versioning {
      enabled = "${var.versioning_enabled}"
    }

  lifecycle {
      prevent_destroy = true
    }


  tags {
    name         = "${var.bucket_name}"
    organization = "${var.organization}"
  }
}
