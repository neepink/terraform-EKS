variable "vpc_id" {
   type = string
}

variable "allowed_ssh_cidr_block" {
  description = "List of CIDR blocks allowed SSH access to the resources"
  type = list(string)
}

