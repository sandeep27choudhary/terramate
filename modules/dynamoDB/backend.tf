terraform {
  backend "s3" {
    bucket = "sudip-test-bucket-269-18"
    key    = "dynamoDB/terraform.tfstate"
    region = "ap-south-1"
  }
}