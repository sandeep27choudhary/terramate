aws_region = "ap-south-1"

aws_db_name = "mydb"

db_identifier = "sudip-rds"

instance_type = "db.t2.micro"

db_engine = "mariadb"

db_engine_version = "10.6.7"

db_username = "sudip"

db_password = "sudip1234"

db_port = 3306

allocated_db_storage = 20

skip_final_snapshot_db = true

db_sub_grp = "private_db_sn_grp"

rds_sec_grp = ["sg-0a466a89f5fee6f57"]

rds_pub_acc = false

auto_minor_upgrade = false
