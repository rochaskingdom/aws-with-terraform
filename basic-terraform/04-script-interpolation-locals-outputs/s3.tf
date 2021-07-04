resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  tags   = local.common_tags
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
}

resource "aws_s3_bucket" "manual" {
  bucket = "myawsbucket-456457"
  tags = {
    Criado    = "04/07/2021"
    Importado = "04/07/2021"
    ManagedBy = "Terraform"
  }
}
