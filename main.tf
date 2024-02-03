resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "MyVPC4Ansys"
  }
}

resource "aws_subnet" "public_subnet" {
  count = 3

  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.${count.index + 1}.0/24"
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnet" {
  count = 3

  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.${count.index + 4}.0/24"
  availability_zone       = element(var.availability_zones, count.index)

  tags = {
    Name = "PrivateSubnet-${count.index + 1}"
  }
}