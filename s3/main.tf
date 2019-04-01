module "s3" {
  source             = "../modules/s3/"
  aws_region 	     = "us-east-1"
  organization       = "shashanksrinfo"
  versioning_enabled = "true"
  bucket_name        = "shashanksrinfo1"
  bucket_acl 	     = "private"
}

