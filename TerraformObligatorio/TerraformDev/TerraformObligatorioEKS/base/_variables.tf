
# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC Identification"
  type        = string

}

variable "subnets" {
  description = "Subnets"
  type        = list(string)
  default     = []
}

variable "role_arn" {
  description = "Role ARN"
  type        = string
  default     = "arn:aws:iam::206798921196:role/LabRole"
}