
# 1. Create VPC

resource "aws_vpc" "second_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "prod "
  }
}
#2.create Subnet 

resource "aws_subnet" "my_subnet_2" {
  vpc_id            = aws_vpc.second_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "prod-sn"
  }
}
#3. Create ICW 

resource "aws_internet_gateway" "my-IGW1" {
  vpc_id = aws_vpc.second_vpc.id

}


