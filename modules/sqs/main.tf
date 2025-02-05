resource "aws_sqs_queue" "example" {
  name = var.queue_name
}

output "sqs_queue_url" {
  value = aws_sqs_queue.example.url
}
