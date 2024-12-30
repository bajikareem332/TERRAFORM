terraform {
  backend "s3" {
    bucket = "me-2-s3-bucket"
    key = "munna/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform1_lock"

  }
}

