variable "ami-value" {
     description = "AMI ID for EC2 instances"
     type        = string
}
 
variable "instance-type" {
    description = "Instance type for EC2 instances"
    type        = string
}
    

variable "vpc-cidr" {
    default = "10.10.0.0/16"  
}

variable "demo_subnet1_id" {
  description = "Subnet ID for the first EC2 instance"
  type        = string
}

variable "demo_subnet2_id" {
  description = "Subnet ID for the second EC2 instance"
  type        = string
}

variable "aws_security_group_demo_vpc_sg_id" {
  description = "Security Group ID for EC2 instances"
  type        = string
}
