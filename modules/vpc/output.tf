output "the_vpc_id" {
  description = "The VPC ID for your subnets"
  value = aws_vpc.vpc.id
}

output "the_public_subnet_id" {
  description = "The subnet ID for your subnets"
  value = aws_subnet.public.id
}

output "the_private_subnet_id" {
  description = "The subnet ID for your subnets"
  value = aws_subnet.private.id
}

output "security_group_id" {
  description = "The Security Group ID"
  value = aws_security_group.pub_instance.id
}