variable "aws_region" {
  description = "AWS region to deploy all resources into"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name prefix used for all resources"
  type        = string
  default     = "project-6"
}

variable "container_port" {
  description = "Port the application listens on inside the container"
  type        = number
  default     = 5000
}

variable "task_cpu" {
  description = "CPU units for the ECS task (1024 = 1 vCPU)"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memory in MB for the ECS task"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Number of ECS tasks to run at all times"
  type        = number
  default     = 1
}

variable "alert_email" {
  description = "Email address subscribed to the CloudWatch alarm via SNS"
  type        = string
}
