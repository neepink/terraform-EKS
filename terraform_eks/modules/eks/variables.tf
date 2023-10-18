variable "sg_ids" {
  description = "security group ids" 
  type = string
}

variable "subnet_ids" {
  description = "Subnet ids"
  type = list
}

variable "vpc_id" {
   description = "VPC ID"
   type = string
}

variable "instance-type" {
    description = "Instance type for EC2 instances"
    type        = string
}

variable "ssh-key" {
    description = "Key to access ec2 instances"
    type        = string
}


