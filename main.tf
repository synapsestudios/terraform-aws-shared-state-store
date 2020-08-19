######################################
# Create Version S3 Bucket For Storage
######################################
resource "aws_s3_bucket" "this" {
  bucket = "terraform-state-${var.name}"
  acl    = "private"
  tags   = var.tags

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}

#########################################
# Create DynamoDB Table For State Locking
#########################################
resource "aws_dynamodb_table" "this" {
  name         = "terraform-state-${var.name}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  tags         = var.tags

  attribute {
    name = "LockID"
    type = "S"
  }
}
