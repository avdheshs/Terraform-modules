resource "aws_ecs_cluster" "example_fargate" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "fargate_task" {
  family                   = var.task_definition_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  container_definitions    = jsonencode([{
    name      = var.container_name
    image     = var.container_image
    cpu       = 256
    memory    = 512
    essential = true
  }])

  execution_role_arn = var.execution_role_arn
  task_role_arn      = var.task_role_arn
}

resource "aws_ecs_service" "fargate_service" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.example_fargate.id
  task_definition = aws_ecs_task_definition.fargate_task.arn
  desired_count   = var.desired_count

  network_configuration {
    subnets          = var.subnet_ids
    security_groups = var.security_groups
    assign_public_ip = true
  }
}

output "ecs_fargate_cluster_name" {
  value = aws_ecs_cluster.example_fargate.name
}
