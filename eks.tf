provider "aws" {
  region = "us-east-1"
}

module "eks_cluster" {
    source = "terraform-aws-module/eks/aws"
    cluster_name = "gokul-cluster"
    subnets = []
    vpc_id = ""
    cluster_version = "1.21"
    node_groups {
        eks_nodes {
            desired_capcity = 2
            max_capacity = 3
            min_capcity = 1
        }
    }
}