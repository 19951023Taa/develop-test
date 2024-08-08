variable "cluster_identifier" {
  type    = string
  default = ""
}

variable "vpc_security_group_ids" {
  type    = list(any)
  default = []
}

variable "engine" {
  type    = string
  default = ""
}

variable "engine_version" {
  type    = string
  default = ""
}

variable "port" {
  type    = string
  default = ""
}

variable "database_name" {
  type    = string
  default = ""
}

variable "master_username" {
  type    = string
  default = ""
}

variable "master_password" {
  type    = string
  default = ""
}

variable "parameter_group_name" {
  type    = string
  default = ""
}

variable "db_parameter_group_name" {
  type    = string
  default = ""
}

variable "instance_class" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "storage_encrypted" {
  type    = bool
  default = true
}

variable "kms_key_id" {
  type    = string
  default = ""
}

variable "backup_retention_period" {
  type    = string
  default = ""
}

variable "preferred_backup_window" {
  type    = string
  default = ""
}

variable "enabled_cloudwatch_logs_exports" {
  type    = list(any)
  default = []
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = false
}

variable "preferred_maintenance_window" {
  type    = string
  default = ""
}

variable "deletion_protection" {
  type    = bool
  default = true
}

variable "subnet_ids" {
  type    = list(any)
  default = []
}

variable "family" {
  type    = string
  default = ""
}

variable "db_subnet_group_name" {
  type    = string
  default = ""
}

variable "PRO" {
  type    = string
  default = ""
}

variable "SYS" {
  type    = string
  default = ""
}

variable "ENV" {
  type    = string
  default = ""
}

variable "identifier" {
  type    = string
  default = ""
}

variable "snapshot_identifier" {
  type    = string
  default = ""
}

variable "global_cluster_identifier" {
  type    = string
  default = null
}