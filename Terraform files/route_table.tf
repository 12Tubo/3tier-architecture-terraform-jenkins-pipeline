# creating route table
resource "aws_route_table" "route" {
  vpc_id =“${aws_vpc.main.id}” 

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = “${aws_internet_gateway.gw.id}”
  }
tags = {
    Name = "route to internet"
  }
}

# Associating route table
resource "aws_route_table_association" "rt1" {
  subnet_id      = “${aws_subnet.subnet.id}”
  route_table_id = “${aws_route_table.route.id}”
}

# Associating route table
resource "aws_route_table_association" "rt2" {
  subnet_id      = "${ aws_subnet.subnet1.id}”
  route_table_id = “${aws_route_table.route.id}”
}
