variable "cluster_name" {
  type    = string
  default = "example-ecs-cluster"
}

variable "task_definition_family" {
  type    = string
  default = "example-task"
}

variable "container_name" {
  type    = string
  default = "example-container"
}

variable "container_image" {
  type    = string
  default = "nginx:latest"
}
