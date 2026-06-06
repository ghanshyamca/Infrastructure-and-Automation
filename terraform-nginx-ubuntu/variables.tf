variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Base name used for resource tagging and naming."
  type        = string
  default     = "terraform-nginx-ubuntu"
}

variable "environment" {
  description = "Environment label applied through default tags."
  type        = string
  default     = "assignment"
}

variable "instance_type" {
  description = "EC2 instance type for the web server."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Optional EC2 key pair name for SSH access. Leave empty if you do not want to attach one."
  type        = string
  default     = ""
}
