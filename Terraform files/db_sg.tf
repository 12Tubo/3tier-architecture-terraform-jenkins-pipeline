# create database security group
resource "aws_db_security_group" "default" {
  name        = "db_sg"
  description = "allow inbound traffic from application layer"
  vpc_id      = "$ { aws_vpc.main.id}"

  ingress {
    description     = "allow traffic from application layer"
    from_port       = 3306
    to_port         = 65535
    protocol        = "tcp"
    security_groups = [aws_db_security_group.default.id]
  }

  Egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  Tags = {
    Name = "database sg"
  }
}
