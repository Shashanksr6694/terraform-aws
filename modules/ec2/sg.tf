resource "aws_security_group" "instance" {
 name        = "${var.sg_name}" 
 description = "sg for instance" 
 vpc_id      = "${var.vpc_id}"
 ingress {
   from_port        = 22
   to_port          = 22
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
 }
 egress {
   from_port        = 0
   to_port          = 0
   protocol         = -1
   cidr_blocks      = ["0.0.0.0/0"]
 }
 tags {
   organization = "${var.organization}"
   Name = "${var.instance_name}"
 }
}
