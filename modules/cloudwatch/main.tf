resource "aws_cloudwatch_log_group" "example" {
  name = var.log_group_name

  retention_in_days = var.retention_days
}

resource "aws_cloudwatch_metric_alarm" "example" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = var.metric_name
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = var.threshold
  alarm_description   = "Example CloudWatch Alarm"
  actions_enabled     = true
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.example.name
}
