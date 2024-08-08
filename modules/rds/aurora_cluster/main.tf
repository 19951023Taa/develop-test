resource "aws_rds_cluster" "this" {
  cluster_identifier = var.cluster_identifier
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name            = aws_db_subnet_group.this.name
  db_cluster_parameter_group_name = aws_rds_cluster_parameter_group.this.name

  engine                          = var.engine
  engine_version                  = var.engine_version
  port                            = var.port
  storage_encrypted               = var.storage_encrypted
  kms_key_id                      = var.kms_key_id
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = var.preferred_backup_window
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  preferred_maintenance_window    = var.preferred_maintenance_window
  deletion_protection             = var.deletion_protection
  snapshot_identifier             = var.snapshot_identifier
  global_cluster_identifier       = var.global_cluster_identifier

  database_name   = var.database_name
  master_username = var.master_username
  master_password = var.master_password

  skip_final_snapshot = false
  apply_immediately   = false

  tags = merge(
    { "Name" = var.cluster_identifier },
    var.tags
  )
}

resource "aws_db_subnet_group" "this" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = merge(
    { "Name" = var.db_subnet_group_name },
    var.tags
  )
}

resource "aws_db_parameter_group" "this" {
  name   = var.db_parameter_group_name
  family = var.family

  tags = merge(
    { "Name" = var.db_parameter_group_name },
    var.tags
  )
}

resource "aws_rds_cluster_parameter_group" "this" {
  name   = var.parameter_group_name
  family = var.family

  parameter {
    name         = "rds.logical_replication"
    value        = 1
    apply_method = "pending-reboot" 
  }

  parameter {
    name  = "timezone"
    value = "Asia/Tokyo"
  }

  parameter {
    name  = "wal_receiver_timeout"
    value = "300000"
  }

  tags = merge(
    { "Name" = var.parameter_group_name },
    var.tags
  )
}