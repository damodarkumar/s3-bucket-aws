# use ubuntu 20 AMI for EC2 instance

provider "aws" {
  region  = "eu-north-1"
}

resource "aws_s3_bucket" "platformengineering_bucket" {
  acl    = "private"

  tags = {
    Name = var.bucket_name
  }
}
