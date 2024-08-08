resource "aws_rds_cluster_instance" "this" {
  cluster_identifier = var.cluster_identifier
  identifier         = var.identifier

  engine                     = var.engine
  engine_version             = var.engine_version
  instance_class             = var.instance_class
  db_subnet_group_name       = var.db_subnet_group_name
  db_parameter_group_name    = var.db_parameter_group_name
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  monitoring_interval        = var.monitoring_interval
  monitoring_role_arn        = var.monitoring_role_arn
  ca_cert_identifier         = var.ca_cert_identifier

  apply_immediately = false
  publicly_accessible = false

  tags = merge(
    { "Name" = var.identifier },
    var.tags
  )
}