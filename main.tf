resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "dev"
  }
}

# Upload file to S3
resource "aws_s3_object" "upload_file" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "hello.txt"
  source = "hello.txt"

  etag = filemd5("hello.txt")
}

# Upload file inside folder
resource "aws_s3_object" "upload_file_in_folder" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "upload/joker.txt"   # S3 folder + file name
  source = "upload/joker.txt"   # local path

  etag = filemd5("upload/joker.txt")
}