output "instance_public_ips" { value = aws_instance.my_instance[*].public_ip }
output "bucket_name" { value = aws_s3_bucket.app_bucket.id }
output "table_name" { value = aws_dynamodb_table.app_table.name }
