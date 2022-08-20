variable "aws_region" {
  type    = string
}

variable "aws_db_name" {
  type    = string
}

variable "db_identifier" {
  type    = string
}

variable "instance_type" {
  type    = string
}

variable "db_engine" {
  type    = string
}

variable "db_engine_version" {
  type    = string
}

variable "db_username" {
  type    = string
}

variable "db_password" {
  type    = string
}

variable "db_port" {
  type    = string
}

variable "allocated_db_storage" {
  type    = string
}

variable "skip_final_snapshot_db" {
  type    = bool
}

variable "auto_minor_upgrade" {
  type    = bool
}

variable "db_sub_grp" {
  type    = string
}

variable "rds_sec_grp" {
  type    = list(string)
}

variable "rds_pub_acc" {
  type    = bool
}