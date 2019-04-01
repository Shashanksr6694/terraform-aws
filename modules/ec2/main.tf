provider "aws" {
  region  = "${var.aws_region}"
}

resource "aws_instance" "instance" {
  count                       = "${var.instance_count}"
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.subnet_id}"
  vpc_security_group_ids      = ["${aws_security_group.instance.id}"]
  key_name                    = "${var.key_name}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  root_block_device {
   delete_on_termination = true
   volume_size           = "${var.instance_size}"
   volume_type           = "gp2"
  }
  tags {
   organization = "${var.organization}"
   Name = "${var.instance_name}"
  }
}


