variable "function_name" {
  type    = string
  default = "example_lambda"
}

variable "role_arn" {
  type    = string
  default = ""
}

variable "lambda_zip" {
  type    = string
  default = "./lambda.zip"
}
