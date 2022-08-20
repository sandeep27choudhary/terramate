data "terraform_remote_state" "remote" {
  backend = "s3"
  config = {
    bucket = "sudip-test-bucket-269-18"
    key = "vpc_ec2/terraform.tfstate"
    region = "ap-south-1"
  }
}