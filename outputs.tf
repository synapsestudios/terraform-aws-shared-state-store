output "s3_bucket" {
  value = aws_s3_bucket.this
}

output "dynamodb_table" {
  value = aws_dynamodb_table.this
}
