/* Common */
variable "ENV" {
  description = "PD/ST/DV/DR"
  type        = string
  default     = "dev"
}

variable "subnet_cidrs" {}