terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}


data "aws_eks_cluster_auth" "eks" {
  name = module.eks.cluster_name
 
}

# data "aws_eks_cluster" "eks_endpoint" {
#  name = module.eks.cluster_name

# }

//provider "kubernetes" {
  //host                   = data.aws_eks_cluster.eks_endpoint.endpoint                                   
  //cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks_endpoint.certificate_authority[0].data) 
  //token                  = data.aws_eks_cluster_auth.eks.token
//}
provider "kubernetes" {
  host                   = "https://C45CF1C5DFAFD56EF42DF3E0F1CD375E.gr7.us-east-1.eks.amazonaws.com"  # data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJek1EWXlNREl5TlRjeU9Wb1hEVE16TURZeE56SXlOVGN5T1Zvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTlF0CmtVZ3RmLzdiTzVBZ3pDY3FQUWJrM3gwVldBM0lrWTVlL3Q0RWtlQVNVdnR4alZXY0I1SFFNZW9YaEVCRnF4eHAKYTRVU2hleSt3ZDlaZ2xWeGRmb1JmUzRjV2lNUXVSckZpM1VSdnkyNWk3SEJJYlNqcFZtY0p2ZktHSWEwd0RXZgo3NnRhL1gwcHpRNFE0T1ZIaTVHL3ZIWjVKUFgyNENQV3N3SFVHMlExQ1Y1S2RydXRQbTJBUEdTR1R1aGFwR255CllxVXR2cmhobzh3TCtmbWp0azlHZnFWTlI5VFBSRzVKRHRYRmlYYjdFYVdSbk50Rm5taW41dFhiYXpKSlkzaDgKNkkyckovUFl2eWRQL2JFQVpIUUlKYno4VWJCSGo5bktUOU4zSFZFeUhzT0RjSVVuRXhDZzZVUFAwVFQydmtnbwpJeS9YMkxjenl4ZVFYbGhwaGpjQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZKdEhKQlA2ZDdKQzlEVFFsUDBSYkd4YXN1NHhNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBTGFwWG1zS3ZLaWQ1RG8zdFA2NQplTkh4WmZsaG1abVBSajlmaC9aQkp3N1BiaGJ0Nks4L2N6cGYvK1Y0OTVNUEdWblVOdk5jUUdhYzBNaDllS04yCllGK2RFUmZkQ3pEdUQ0akEyQm5BRlpLMW1pNHhvUnNUWklJVDlTMzg5dkNVSnlZem0yOENBMUNjNjYrV3ZLcXQKNmZRdmlmaXJ0WjlROHNHcTB3UkJzRUllRVVTMjJ3OVBuMnRsaTZZazMxS0poSzhhNGt6eFMrdjc3MEVoU3FMYQo5WEY3aVhia2g4dzlnNzhnUEtBWjlFTXZPYzYvaUpQNUtkcjZWSFY1SHVUUVY4TWxOdmZTSCsrRWQ5ODBMdTczCnZ4aVV3OHNPZHpaMTF0Y1hRblNHK2cvVDdDeTE0UXZCZUdJVHdobzA2N05iU0t3am0vWm0vVXlUNTlMRkRvdE8Kc09jPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==")
  token                  = data.aws_eks_cluster_auth.eks.token
}