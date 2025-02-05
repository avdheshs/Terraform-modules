resource "aws_kms_key" "example" {
  description             = var.key_description
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "example_alias" {
  name          = "alias/example-key"
  target_key_id = aws_kms_key.example.key_id
}

output "kms_key_id" {
  value = aws_kms_key.example.key_id
}
