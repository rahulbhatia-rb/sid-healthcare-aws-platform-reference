terraform { required_version = ">= 1.6.0" }
variable "name" { type = string }
resource "aws_s3_bucket" "data" { bucket_prefix = "${var.name}-private-" }
resource "aws_s3_bucket_server_side_encryption_configuration" "data" { bucket = aws_s3_bucket.data.id rule { apply_server_side_encryption_by_default { sse_algorithm = "aws:kms" } } }
resource "aws_s3_bucket_public_access_block" "data" { bucket=aws_s3_bucket.data.id block_public_acls=true block_public_policy=true ignore_public_acls=true restrict_public_buckets=true }
resource "aws_cloudwatch_log_group" "audit" { name="/health/${var.name}/audit" retention_in_days=90 }
