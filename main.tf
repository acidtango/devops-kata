provider "aws" {
  region = "eu-west-1"
}
resource "aws_s3_bucket" "data" {
  bucket = "company-production-data"
}
resource "aws_security_group" "app" {
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
