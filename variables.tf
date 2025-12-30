variable "ami_id" {
  type = string
}

variable "i_type" {
  type = string
}

variable "environment" {
  description = "Environment name (DEV / UAT / PROD)"
  type        = string
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "Devops/cloud"
}


