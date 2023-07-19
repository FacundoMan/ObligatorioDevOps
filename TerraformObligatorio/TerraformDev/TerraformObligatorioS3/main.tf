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

resource "aws_s3_bucket" "bucketecrdevobligatorio" {
  bucket = "bucketecrdevobligatorio" 
  acl    = "private" 

  tags = {
    Name = "My Bucket"
  }
}