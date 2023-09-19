variable "subnet_group_name" {
  type        = string
  description = "new subnet"
}

variable "subnet_ids" {
  type        = list(string)
  description = "new subnets"
}

variable "security_group_name" {
  type        = string
  description = "New-sg"
}

variable "source_cidr" {
  type        = list(string)
  description = "Source IP range for inbound traffic"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the RDS instance"
}

variable "instance_name" {
  type        = string
  description = "Name of the RDS instance"
}

variable "username" {
  type        = string
  description = "Username for the RDS instance"
}

variable "password" {
  type        = string
  description = "Password for the RDS instance"
}
variable "vpc_ids" {
  type        = string
  description = "vpc ids"
}
