#Creating VPC
resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  tags = {
    Name = "sudip_vpc"
  }
}

#Creating Public Subnet
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.pub_subnets_cidr
  availability_zone = var.pub_sn_AZ

  tags = {
    Name = "public_subnet"
  }
}

#Creating Private Subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.priv_subnets_cidr
  availability_zone = var.priv_sn_AZ

  tags = {
    Name = "private_subnet"
  }
}

#Creating Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "my_internet_gateway"
  }
}

#Creating Public Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = var.pub_rt_cidr 
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public_rt"
  }
}
#Creating Private Route Table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = var.priv_rt_cidr 
    nat_gateway_id = aws_nat_gateway.public.id
  }
  tags = {
    Name = "private_rt"
  }
}
#Adding Subnet to Public Route Table
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

#Adding Subnet to Private Route Table
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}

resource "aws_eip" "lb" {
  
}

resource "aws_nat_gateway" "public" {
  depends_on = [
    aws_eip.lb
  ]

  # Allocating the Elastic IP to the NAT Gateway!
  allocation_id = aws_eip.lb.id
  
  # Associating it in the Public Subnet!
  subnet_id = aws_subnet.public.id
  tags = {
    Name = "Nat-Gateway_Project"
  }
}


