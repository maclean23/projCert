# AWS Access Key
variable "aws_access_key" {
  description = "AWS Access Key ID"
  type        = string
  default = AKIAYS2NVIVH3WWKEB6U
}

# AWS Secret Access Key
variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  default = WYIl3HSAeOooblDl8hyQeYDoPHWDG3ZiPNY+VxSt
}

# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-central-2"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnet CIDR Block
variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Availability Zone
variable "availability_zone" {
  description = "Availability zone to deploy resources in"
  type        = string
  default     = "us-east-1a"
}

# EKS Cluster Role ARN
variable "eks_role_arn" {
  description = "IAM Role ARN for EKS Cluster"
  type        = string
}
