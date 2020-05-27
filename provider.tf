provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "sankanams-terra-my-bucket"
    key            = "elb-asg/terraform.tfstate"
    region         = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "sankanams-terra-my-table"
    encrypt        = true
  }
}