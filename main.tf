
provider "aws" {
  region = "us-east-1"
}


module "ec2_instance" {
  source = "./modules/ec2_instance"
}

module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source = "./modules/s3"
}

/*resource "aws_dynamodb_table" "terraform1_lock" {
  name = "terraform1_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}*/
