resource "aws_db_instance" "example" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true
  multi_az             = false
  db_subnet_group_name = var.db_subnet_group_name

  tags = {
    Name = "ExampleRDS"
  }
}

output "db_instance_endpoint" {
  value = aws_db_instance.example.endpoint
}
