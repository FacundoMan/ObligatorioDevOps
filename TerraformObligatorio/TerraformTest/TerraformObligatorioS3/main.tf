terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
    }
  }
}

provider "aws" {
  profile = "default" 
  region  = "us-east-1"
}

resource "aws_s3_bucket" "bucketecrtestobligatorio" {
  bucket = "bucketecrtestobligatorio" 
  acl    = "private" 

  tags = {
    Name = "My Bucket"
  }
}