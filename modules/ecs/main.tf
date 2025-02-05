resource "aws_ecs_cluster" "example" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "example" {
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
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.example.name
}
