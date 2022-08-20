resource "aws_dynamodb_table" "dynaomoDB" {
  name = var.table_name
  hash_key = var.hash_key
  read_capacity  = var.r_capacity
  write_capacity = var.w_capacity

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }
}