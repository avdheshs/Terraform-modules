module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
}

module "s3" {
  source = "./modules/s3"
}

module "rds" {
  source = "./modules/rds"
  vpc_id = module.vpc.vpc_id
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source = "./modules/lambda"
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
}

module "sns" {
  source = "./modules/sns"
}

module "sqs" {
  source = "./modules/sqs"
}

module "ecs" {
  source = "./modules/ecs"
}

module "kms" {
  source = "./modules/kms"
}

module "eks" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id
}

module "ecs_fargate" {
  source = "./modules/ecs_fargate"
  vpc_id = module.vpc.vpc_id
}
