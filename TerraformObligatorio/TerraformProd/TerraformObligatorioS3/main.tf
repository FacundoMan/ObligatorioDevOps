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

resource "aws_s3_bucket" "bucketecrprobandoobliga3" {
  bucket = "bucketecrprobandoobliga3" # Cambia esto por el nombre que desees para tu bucket
  acl    = "private" # Cambia esto si deseas configurar un nivel de acceso diferente

  tags = {
    Name = "My Bucket"
  }
}