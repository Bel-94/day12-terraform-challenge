variable "cluster_name" {
  type    = string
  default = "day12-blue-green"
}

variable "ami_id" {
  type    = string
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "min_size" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 4
}

variable "server_port" {
  type    = number
  default = 80
}

variable "active_environment" {
  type        = string
  default     = "blue"
  description = "Which environment receives traffic: blue or green"

  validation {
    condition     = contains(["blue", "green"], var.active_environment)
    error_message = "Active environment must be blue or green."
  }
}