provider "aws" {
  region = "us-east-1"
  access_key = "AKIAS3D7OVI4K7TBNQSZ
  secret_key = "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"
} add

terraform {
  cloud {
    organization = "gokulterra"

    workspaces {
      name = "terra-dev"
    }
  }
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