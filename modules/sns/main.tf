resource "aws_sns_topic" "example" {
  name = var.topic_name
}

output "sns_topic_arn" {
  value = aws_sns_topic.example.arn
}
