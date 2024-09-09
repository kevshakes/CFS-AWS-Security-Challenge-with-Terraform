provider "aws" {
  region = "us-east-1"
}

# creating vpc
resource "aws_vpc" "cloudforce_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "cloudforce_vpc"
  }
}

# creating public subnet 1
resource "aws_subnet" "cloudforce_publicA" {
  vpc_id            = aws_vpc.cloudforce_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "cloudforce_publicA"
  }
}
# creating private subnet 1
resource "aws_subnet" "cloudforce_privateA" {
  vpc_id            = aws_vpc.cloudforce_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "cloudforce_privateA"
  }
}
# creating public subnet 2
resource "aws_subnet" "cloudforce_publicB" {
  vpc_id            = aws_vpc.cloudforce_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "cloudforce_publicB"
  }
}
# creating private subnet 2
resource "aws_subnet" "cloudforce_privateB" {
  vpc_id            = aws_vpc.cloudforce_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "cloudforce_privateB"
  }
}

# creating an internet gateway
resource "aws_internet_gateway" "cloudforce_igw" {
  vpc_id = aws_vpc.cloudforce_vpc.id

  tags = {
    "Name" = "cloudforce_igw"
  }
}

# creating a route table 
resource "aws_route_table" "cloudforce_rtb" {
  vpc_id = aws_vpc.cloudforce_vpc.id

  tags = {
    "Name" = "cloudforce_rtb"
  }
}
# creating a route
resource "aws_route" "cloudforce_rt" {
  route_table_id         = aws_route_table.cloudforce_rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.cloudforce_igw.id

}
# associating the route table to public subnet 1
resource "aws_route_table_association" "cloudforce_rtb_assoc1" {
  subnet_id      = aws_subnet.cloudforce_publicA.id
  route_table_id = aws_route_table.cloudforce_rtb.id
}
# associating the route table to public subnet 2
resource "aws_route_table_association" "cloudforce_rtb_assoc2" {
  subnet_id      = aws_subnet.cloudforce_publicB.id
  route_table_id = aws_route_table.cloudforce_rtb.id
}