variable "cluster_name" {
  type    = string
  default = "example-eks-cluster"
}

variable "cluster_role_arn" {
  type    = string
  default = ""
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}
