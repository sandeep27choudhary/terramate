variable "aws_region" {
	type = string 
}

variable "vpc_cidr" {
	type = string
}

variable "pub_subnets_cidr" {
	type = string 
}

variable "priv_subnets_cidr" {
	type = string 
}

variable "pub_sn_AZ" {
	type = string 
}

variable "priv_sn_AZ" {
	type = string 
}

variable "instance_ami" {
  type    = string
}

variable "aws_instance_type" {
  type    = string
}

variable "instance_public_ip" {
  type    = bool
}

variable "instance_public_ip2" {
  type    = bool
}

variable "security_key_name" {
  type    = string
}

variable "pub_rt_cidr" {
  type    = string
}

variable "priv_rt_cidr" {
  type    = string
}


variable "instance_name" {
  type    = string
}

variable "instance_name2" {
  type    = string
}