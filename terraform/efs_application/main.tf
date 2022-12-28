resource "aws_efs_file_system" "mysql_ecs" {
  creation_token = "my-product"
  tags = {
    Name = var.name
  }
}

resource "aws_efs_mount_target" "alpha" {
  file_system_id = aws_efs_file_system.mysql_ecs.id
  subnet_id      = tolist(var.subnets_ids)[0]
}

resource "aws_efs_access_point" "access_point" {
  file_system_id = aws_efs_file_system.mysql_ecs.id
}