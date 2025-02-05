output "vpc_id" {
  value = module.vpc.vpc_id
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "rds_endpoint" {
  value = module.rds.db_instance_endpoint
}

output "iam_user_name" {
  value = module.iam.user_name
}

output "lambda_function_name" {
  value = module.lambda.lambda_function_name
}

output "cloudwatch_log_group" {
  value = module.cloudwatch.log_group_name
}

output "sns_topic_arn" {
  value = module.sns.sns_topic_arn
}

output "sqs_queue_url" {
  value = module.sqs.sqs_queue_url
}

output "ecs_cluster_name" {
  value = module.ecs.ecs_cluster_name
}

output "kms_key_id" {  value = module.kms.kms_key_id }
output "eks_cluster_name" { value = module.eks.eks_cluster_name }
output "ecs_fargate_cluster_name" { value = module.ecs_fargate.ecs_fargate_cluster_name }
