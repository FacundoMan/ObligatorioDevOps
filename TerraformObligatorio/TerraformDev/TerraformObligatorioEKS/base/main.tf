module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 18.21"

  cluster_name    = "obligatorio_dev_ops_dev"
  cluster_version = "1.26"
 

  cluster_endpoint_public_access = true

  vpc_id                   = var.vpc_id
  subnet_ids               = var.subnets
  control_plane_subnet_ids = var.subnets

  create_iam_role = false
  iam_role_arn    = var.role_arn



  eks_managed_node_group_defaults = {
    instance_types = ["t3.medium"]
    
  }

  eks_managed_node_groups = {
    workers = {
      min_size     = 1
      max_size     = 5
      desired_size = 4

      instance_types           = ["t3.medium"]
      capacity_type            = "ON_DEMAND"
      iam_role_arn             = var.role_arn
      iam_instance_profile_arn = var.role_arn
      create_iam_role          = false
      create_role              = false

      
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}