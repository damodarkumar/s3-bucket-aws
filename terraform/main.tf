# use ubuntu 20 AMI for EC2 instance

provider "aws" {
  region  = ""
}

resource "aws_s3_bucket" "platformengineering_bucket" {
  bucket = "var.bucketname"
  acl    = "private"
}

  tags = {
    Name = var.bucketname
  }