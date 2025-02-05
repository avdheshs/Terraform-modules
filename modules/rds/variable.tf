variable "instance_class" {
  type    = string
  default = "db.t2.micro"
}

variable "db_name" {
  type    = string
  default = "exampledb"
}

variable "username" {
  type    = string
  default = "admin"
}

variable "password" {
  type    = string
  default = "password123"
}

variable "db_subnet_group_name" {
  type    = string
  default = ""
}
