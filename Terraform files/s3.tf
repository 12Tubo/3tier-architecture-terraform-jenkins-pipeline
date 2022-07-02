resource "aws_s3_bucket" "omo" {
  bucket = "my-tf-omo-bucket"

  tags = {
    Name        = "My_omo_bucket"
    Environment = "Dev"
  }
}
