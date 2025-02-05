resource "aws_iam_user" "example" {
  name = var.user_name
}

resource "aws_iam_user_policy" "example_policy" {
  name = "example-policy"
  user = aws_iam_user.example.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = "s3:ListBucket"
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

output "user_name" {
  value = aws_iam_user.example.name
}
