resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [data.terraform_remote_state.remote.outputs.the_public_subnet_id, data.terraform_remote_state.remote.outputs.the_private_subnet_id]

  tags = {
    Name = "My DB subnet group"
  }
}