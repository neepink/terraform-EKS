output "vpc_id" {
  value = aws_vpc.demo-vpc.id
}

output "subnet1_id" {
  value = aws_subnet.demo_subnet1.id
}

output "subnet2_id" {
  value = aws_subnet.demo_subnet2.id
}