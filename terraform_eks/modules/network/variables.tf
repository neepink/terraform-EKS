variable "vpc-cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "subnet1-cidr" {
    description = "CIDR block for subnet1"
    type        = string
}
 
variable "subnet1_az" {
    description = "Availability zone for subnet1"
    type        = string
}

variable "subnet2-cidr" {
    description = "CIDR block for subnet2"
    type        = string
    
  
}
variable "subnet2_az" {
    description = "Availability zone for subnet2"
    type        = string
      
}