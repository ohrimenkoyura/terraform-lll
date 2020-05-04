terraform {
  required_version = "~> 0.10"

  backend "s3" {
    encrypt = "true"
    bucket = "my-s3-bucket-neva.lunchtime"
    key = "ourdatastore/terraform.tfstate"
    acl    = "private"
  }
}

//module "s3_bucket" {
//  source = "terraform-aws-modules/s3-bucket/aws"
//
//  bucket = "my-s3-bucket-neva.lunchtime"
//  acl    = "private"
//  region = "us-east-2"
//
//  versioning = {
//    enabled = true
//  }
//
//}


//provider "aws" {
//  region = "us-west-2"
//}

//resource "aws_s3_bucket" "example" {
//  bucket = "my-test-s3-terraform-bucket"
//  acl = "private"
//  versioning {
//    enabled = true
//  }
//
//  tags {
//    Name = "my-test-s3-terraform-bucket"
//  }
//
//}