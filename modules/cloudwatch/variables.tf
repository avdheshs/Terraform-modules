variable "log_group_name" {
  type    = string
  default = "example-log-group"
}

variable "retention_days" {
  type    = number
  default = 7
}

variable "alarm_name" {
  type    = string
  default = "ExampleAlarm"
}

variable "metric_name" {
  type    = string
  default = "CPUUtilization"
}

variable "threshold" {
  type    = number
  default = 80
}
