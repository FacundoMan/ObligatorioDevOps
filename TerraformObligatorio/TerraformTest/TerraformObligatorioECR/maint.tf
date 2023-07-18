resource "aws_ecr_repository" "ecr_test_obli" {
 name                 = "ecr_test_obli"
 image_tag_mutability = "MUTABLE"

 image_scanning_configuration {
   scan_on_push = true
 }
}