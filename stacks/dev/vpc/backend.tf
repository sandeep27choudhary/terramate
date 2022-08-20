terraform {
  backend "s3" {
    bucket = "sudip-test-bucket-269-18"
    key    = "vpc_ec2/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "sudip_dynamoDB_table"
  }
}