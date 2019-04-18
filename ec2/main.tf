module "instances" {
  source             = "../modules/ec2"
  aws_region	     = "us-east-1"
  organization       = "shashanksrinfo"
  subnet_id	     = "subnet-92f48cbc"
  key_name           = "shashanksrinfo"
  instance_count     = 10
  associate_public_ip_address = true
  instance_name      = "shashanksrinfo"
  instance_size      = 10
  instance_type      = "t2.micro"
  ami                = "ami-011b3ccf1bd6db744"
  vpc_id             = "vpc-92941de8"
  sg_name            = "shashanksrinfo"
}
