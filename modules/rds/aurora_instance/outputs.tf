output "rds_id" {
  value       = aws_rds_cluster_instance.this.id
}

output "rds_arn" {
  value       = aws_rds_cluster_instance.this.arn
}