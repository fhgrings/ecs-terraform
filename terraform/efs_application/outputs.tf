output "aws_efs_id" {
  value = aws_efs_file_system.mysql_ecs.id
}

output "aws_efs_access_point_id" {
  value = aws_efs_access_point.access_point.id
}

