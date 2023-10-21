variable "cidr" {
  default = "10.0.0.0/16"
}
variable "allowed_ssh_cidr_blocks" {
  description = "List of CIDR blocks allowed SSH access to the resources"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_ssh_cidr_blocks" {
  description = "List of CIDR blocks allowed SSH access to the resources"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
