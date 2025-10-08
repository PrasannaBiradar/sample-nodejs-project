variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
}

variable "ecs_cluster_name" {
  description = "ECS cluster name"
  type        = string
}

variable "mongo_uri" {
  description = "MongoDB connection URI"
  type        = string
}

variable "env_name" {
  description = "Environment name"
  type        = string
}
