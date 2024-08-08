output "cluster_identifier" {
  value = aws_rds_cluster.this.cluster_identifier
}

output "engine" {
  value = aws_rds_cluster.this.engine
}

output "engine_version" {
  value = aws_rds_cluster.this.engine_version_actual
}

output "subnet_group_name" {
  value = aws_db_subnet_group.this.id
}

output "parameter_group_name" {
  value = aws_db_parameter_group.this.id
}

output "arn" {
  value = aws_rds_cluster.this.arn
}