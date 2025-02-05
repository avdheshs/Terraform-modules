resource "aws_lambda_function" "example" {
  function_name = var.function_name
  role          = var.role_arn
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  filename      = var.lambda_zip

  environment {
    variables = {
      example_key = "example_value"
    }
  }

  tags = {
    Name = "ExampleLambdaFunction"
  }
}

output "lambda_function_name" {
  value = aws_lambda_function.example.function_name
}
