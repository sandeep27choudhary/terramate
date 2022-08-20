variable "aws_region" {
  type    = string
}

variable "instance_ami" {
  type    = string
}

variable "aws_instance_type" {
  type    = string
}

variable "security_key_name" {
  type    = string
}

variable "security_group" {
  type    = list(string)
}

variable "instance_subnet" {
  type    = string
}

variable "instance_public_ip" {
  type    = bool
}