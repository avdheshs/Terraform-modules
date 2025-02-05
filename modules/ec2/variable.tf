variable "ami_id" {
  type    = string
  default = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  type    = string
  default = ""
}

variable "security_group" {
  type    = string
  default = ""
}
