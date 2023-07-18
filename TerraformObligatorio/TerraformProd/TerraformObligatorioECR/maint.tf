resource "aws_ecr_repository" "ecr_demo_obli" {
 name                 = "ecr_demo_obli"
 image_tag_mutability = "MUTABLE"

 image_scanning_configuration {
   scan_on_push = true
 }
}