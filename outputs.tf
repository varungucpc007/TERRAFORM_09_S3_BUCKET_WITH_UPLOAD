output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}

output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}

output "bucket_region" {
  value = var.aws_region
}

output "bucket_name" {
  value = var.bucket_name
}