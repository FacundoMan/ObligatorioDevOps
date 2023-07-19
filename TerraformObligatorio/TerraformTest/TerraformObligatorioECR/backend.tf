terraform {
 backend "s3" {
   bucket = "bucketecrtestobligatorio"
   key = "~/.aws/credentials"//"~/.aws/config"
   region = "us-east-1"
 }
}