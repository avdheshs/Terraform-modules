variable "cluster_name" {
  type    = string
  default = "example-fargate-cluster"
}

variable "task_definition_family" {
  type    = string
  default = "example-fargate-task"
}

variable "container_name" {
  type    = string
  default = "example-container"
}

variable "container_image" {
  type    = string
  default = "nginx:latest"
}

variable "execution_role_arn" {
  type    = string
  default = ""
}

variable "task_role_arn" {
  type    = string
  default = ""
}

variable "service_name" {
  type    = string
  default = "example-fargate-service"
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "desired_count" {
  type    = number
  default = 1
}

