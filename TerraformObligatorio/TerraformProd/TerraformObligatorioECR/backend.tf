terraform {
 backend "s3" {
   bucket = "bucketecrprobandoobliga3"
   key = "~/.aws/credentials"//"~/.aws/config"
   region = "us-east-1"
 }
}