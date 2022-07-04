# Creating its ec2 instance in public subnet
 resource "aws instance" "demo instance" {

 
   ami         = "ami-0cff7528ff583bf9a"
   instance_type = "t2.micro"
   count = 1
   key_name = "master"
   vpc_security_group_ids =   ["${aws_security_group. Sg.id"}"]
   subnet_id = "${aws_subnet.public_subnet1.id}"
   associate_public_ip_address = true
   user_data = "$ { file("data.sh") }"

 tags = {
    Name = "public instance 1"
}
}

# creating 2nd ec2 instance in public subnet
 resource "aws instance"  "demo instance" {


   ami         = "ami-0cff7528ff583bf9a"
   instance_type = "t2.micro"
   count = 1
   key_name = "master"
   vpc_security_group_ids =   [ "$ { aws_security_group. Sg.id}" ]
   subnet_id =  "${ aws_subnet.public_subnet1.id}"
   associate_public_ip_address = true
   user_data = "$ file("data.sh")" }"
 tags = {
Name = "public instance 2"
}
}
