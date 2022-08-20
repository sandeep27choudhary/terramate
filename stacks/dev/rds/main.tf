provider "aws" {
    region = var.aws_region
}

resource "aws_db_instance" "myrds2" {

    db_name = var.aws_db_name

    identifier = var.db_identifier

    instance_class = var.instance_type

    engine = var.db_engine

    engine_version = var.db_engine_version

    username = var.db_username

    password = var.db_password

    port = var.db_port

    vpc_security_group_ids = ["${aws_security_group.data_base.id}"]

    allocated_storage = var.allocated_db_storage

    skip_final_snapshot = var.skip_final_snapshot_db

    auto_minor_version_upgrade = var.auto_minor_upgrade

    publicly_accessible = var.rds_pub_acc

    db_subnet_group_name = aws_db_subnet_group.default.name
}





