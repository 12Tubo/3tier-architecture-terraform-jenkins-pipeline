
# creating security group
resources "aws_security_group" "demosg" {
  Vpc_id =   "${ aws_vpc.main.id }"
  #inbound rules
  # http access from anywhere
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [ "0.0.0.0/0"]
  }
  # https access from anywhere
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [ "0.0.0.0/0"]
  }
  # ssh access from anywhere
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [ "0.0.0.0/0"]

  # Outbound Rules
  # Internet access to anywhere
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
Tags = {
  Name = "web sg"
}
}


