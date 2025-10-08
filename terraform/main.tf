provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/network"
  vpc_name = var.vpc_name
}

module "ecr" {
  source = "./modules/ecr"
  repo_name = var.ecr_repo_name
}

module "ecs" {
  source = "./modules/ecs"
  cluster_name = var.ecs_cluster_name
  vpc_id = module.network.vpc_id
  subnet_ids = module.network.subnet_ids
  alb_sg_id = module.network.alb_sg_id
  ecr_repo_url = module.ecr.repo_url
  mongo_uri = var.mongo_uri
  env_name = var.env_name
}

output "alb_dns_name" {
  value = module.ecs.alb_dns_name
}
output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}
output "ecs_service_name" {
  value = module.ecs.service_name
}
