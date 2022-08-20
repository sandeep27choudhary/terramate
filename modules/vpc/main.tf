resource "aws_instance" "public_ec2" {

    ami = var.instance_ami  
    instance_type = var.aws_instance_type
    associate_public_ip_address = var.instance_public_ip
    key_name = var.security_key_name
    vpc_security_group_ids = ["${aws_security_group.pub_instance.id}"]
    subnet_id = aws_subnet.public.id

    tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "private_ec2" {

    ami = var.instance_ami  
    instance_type = var.aws_instance_type
    associate_public_ip_address = var.instance_public_ip2
    key_name = var.security_key_name
    vpc_security_group_ids = ["${aws_security_group.priv_instance.id}"]
    subnet_id = aws_subnet.private.id

    tags = {
    Name = var.instance_name2
  }
}