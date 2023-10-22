
# AWS EC2 instance for demo purposes
resource "aws_instance" "demo-server" {
  ami                           = var.ami-value
  instance_type                 = var.instance-type
  associate_public_ip_address   = true
  subnet_id                     = var.demo_subnet1_id
  vpc_security_group_ids        = [var.aws_security_group_demo_vpc_sg_id]
}
