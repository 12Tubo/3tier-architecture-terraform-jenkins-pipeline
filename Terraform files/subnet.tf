# Creating Ist web subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id     =  "${aws_vpc.main.id}"
  cidr_block =  "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "web subnet 1"
  }
}

# creating 2nd web subnet
 resource "aws_subnet" "public-subnet-2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block =  "$ {var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
    Name = "web subnet 2"
  }
}


# creating ist application subnet
 resource "aws_subnet" "application-subnet-1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet2_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"
 
 tags = {
 
    Name = "application subnet 1"
 }
 }
# creating 2nd application subnet
 resource "aws_subnet" "application-subnet-2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block =  "${var.subnet3_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"
 
 tags = {
    Name = "application subnet 2"

 }
 }
# creating ist database subnet
 resource "aws_subnet" "database-subnet-1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block =   "${var.subnet4_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"
 
  tags = {
    Name = "database subnet 1"
  }
 }
# creating 2nd database subnet
resource "aws_subnet" "database-subnet-2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block =   "${var.subnet5_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"

  tags = {
    Name = "db subnet 2"
  }
}