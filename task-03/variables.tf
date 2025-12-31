
variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "i_type" {
  description = "EC2 instance type"
  type        = string
}

variable "environment" {
  description = "Deployment environment (DEV / UAT / PROD)"
  type        = string
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "Daniel-DevOps"
}
