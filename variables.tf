variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Deployment environment (DEV, UAT, PROD)"
  type        = string
}

variable "ami_id" {
  description = "AMI"
  type        = string
}

variable "instance_type" {
  description = "instance type"
  type        = string
}


variable "owner" {
  description = "Owner tag for EC2"
  type        = string
}
