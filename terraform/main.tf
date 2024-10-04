provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
}

resource "aws_eks_cluster" "k8s" {
  name     = "my-cluster"
  role_arn = var.eks_role_arn

  vpc_config {
    subnet_ids = [aws_subnet.subnet.id]
  }
}

output "kubeconfig" {
  value = aws_eks_cluster.k8s.kubeconfig
}
