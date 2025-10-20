#Provider Block
provider "aws" {
  region = "us-west-2"
}

#Resource Block - VPC
resource "aws_vpc" "proxmox_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "proxmox_vpc" }
}

#Resource Block - Subnet
resource "aws_subnet" "proxmox_subnet" {
  vpc_id                  = aws_vpc.proxmox_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2c"
  tags = { Name = "proxmox_subnet" }
}

#Resource Block - IGW
resource "aws_internet_gateway" "proxmox_igw" {
  vpc_id = aws_vpc.proxmox_vpc.id
  tags = { Name = "proxmox-igw" }
}

#Resource Block - RT & RTA
resource "aws_route_table" "proxmox_rt" {
  vpc_id = aws_vpc.proxmox_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.proxmox_igw.id
  }
  tags = { Name = "demo-rt" }
}

resource "aws_route_table_association" "proxmox_rta" {
  subnet_id      = aws_subnet.proxmox_subnet.id
  route_table_id = aws_route_table.proxmox_rt.id
}

#Resource Block - SG & NACLs
resource "aws_security_group" "proxmox_sg" {
  vpc_id = aws_vpc.proxmox_vpc.id
  name   = "proxmox_sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 51820
    to_port     = 51820
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "proxmox_sg" }
}

# EC2 instance (Ubuntu)
resource "aws_instance" "vpn_ec2" {
  ami                         = "ami-03c1f788292172a4e" 
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.proxmox_subnet.id
  vpc_security_group_ids      = [aws_security_group.proxmox_sg.id]
  associate_public_ip_address = true

  tags = { Name = "vpn_ec2" }
}
