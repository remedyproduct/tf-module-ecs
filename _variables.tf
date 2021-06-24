variable "name" {
  type        = string
  description = "ECS Cluster Name"
}

variable "environment" {
  type        = string
  description = "Environment (development, qa, live, etc.)"
  default     = "development"
}
