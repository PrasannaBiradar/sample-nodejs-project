variable "cluster_name" {
  description = "ECS cluster name"
  type        = string
}
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}
variable "alb_sg_id" {
  description = "ALB Security Group ID"
  type        = string
}
variable "ecr_repo_url" {
  description = "ECR repo URL"
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
variable "execution_role_arn" {
  description = "ECS Task Execution Role ARN"
  type        = string
}
