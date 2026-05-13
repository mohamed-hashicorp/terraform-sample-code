terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "buckets" {
  count  = 1000
  bucket = "mohamed-ayman-test-${count.index + 1}"

  tags = {
    Name  = "mohamed-ayman-test-bucket-${count.index + 1}"
    Index = count.index + 1
  }
}
