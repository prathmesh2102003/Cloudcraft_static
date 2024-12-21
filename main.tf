terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
  }
 } 
 backend "s3" {
  bucket = "backend-2102003"
  region = "us-east-1"
  key = "backend.tf"
   
 }
}


resource "aws_s3_bucket" "newbucket" {
    bucket = "prathmesh2102003" 

}


resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.newbucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "getobj" {
    bucket = aws_s3_bucket.newbucket.id
    policy = jsonencode(
        {
  Id = "Policy1734674797576",
  Version = "2012-10-17",
  Statement = [
    {
      Sid = "Stmt1734674791302",
      Action = "s3:GetObject",
      Effect = "Allow",
      Resource = "${aws_s3_bucket.newbucket.arn}/*",
      Principal = "*"
    }
  ]
}
)
}

resource "aws_s3_bucket_website_configuration" "newbucket" {
  bucket = aws_s3_bucket.newbucket.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "addweb" {
    bucket = aws_s3_bucket.newbucket.bucket
    source = "./index.html"
    key = "index.html"
    content_type = "text/html"
}

resource "aws_s3_object" "addweb1" {
    bucket = aws_s3_bucket.newbucket.bucket
    source = "./style.css"
    key = "style.css"
    content_type = "text/css"
}


