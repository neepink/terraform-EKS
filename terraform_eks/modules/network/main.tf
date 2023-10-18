// Create VPC
resource "aws_vpc" "demo-vpc" {
  cidr_block = var.vpc-cidr
}

// Create Subnet
resource "aws_subnet" "demo_subnet1" {
  vpc_id     = aws_vpc.demo-vpc.id 
  cidr_block = var.subnet1-cidr
  availability_zone = var.subnet1_az
  map_public_ip_on_launch = true
} 

resource "aws_subnet" "demo_subnet2" {
  vpc_id     = aws_vpc.demo-vpc.id 
  cidr_block = var.subnet2-cidr
  availability_zone = var.subnet2_az
  map_public_ip_on_launch = true
}


// Create Internet Gateway

resource "aws_internet_gateway" "demo-igw" {
  vpc_id = aws_vpc.demo-vpc.id

  tags = {
    Name = "demo-igw"
  }
}

resource "aws_route_table" "demo-rt" {
  vpc_id = aws_vpc.demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id
  }
  tags = {
    Name = "demo-rt"
  }
}

// associate subnet with route table 
resource "aws_route_table_association" "demo-rta1" {
  subnet_id      = aws_subnet.demo_subnet1.id 
  route_table_id = aws_route_table.demo-rt.id
}

resource "aws_route_table_association" "demo-rta2" {
  subnet_id      = aws_subnet.demo_subnet2.id 
  route_table_id = aws_route_table.demo-rt.id
}


