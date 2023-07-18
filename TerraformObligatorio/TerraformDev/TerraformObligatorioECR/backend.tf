terraform {
 backend "s3" {
   bucket = "bucketecrdevobligatorio"
   key = "~/.aws/credentials"//"~/.aws/config"
   region = "us-east-1"
 }
}