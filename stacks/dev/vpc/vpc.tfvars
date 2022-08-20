aws_region = "ap-south-1" #AWS region

vpc_cidr = "10.0.0.0/16" #cidr of the vpc

pub_subnets_cidr = "10.0.0.0/24" #public subnet cidr

priv_subnets_cidr = "10.0.1.0/24" #private subnet cidr

pub_sn_AZ = "ap-south-1a" #AZ of the subnet

priv_sn_AZ = "ap-south-1b" #AZ of the subnet

pub_rt_cidr = "0.0.0.0/0" #cidr for public route table's route

priv_rt_cidr = "0.0.0.0/0"

instance_ami = "ami-006d3995d3a6b963b" #instance AMI

aws_instance_type = "t2.micro" #ec2 instance type

instance_public_ip = true #do we want to have public ip

instance_public_ip2 = false

security_key_name = "sudipxs2" #.pem file

instance_name = "vpc_public_ec2_sudip" #name of the ec2 instance 

instance_name2 = "vpc_private_ec2_sudip"