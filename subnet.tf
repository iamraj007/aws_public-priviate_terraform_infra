#Public Subnet 
resource "aws_subnet" "Public-subnet" {
  vpc_id                  = "${aws_vpc.MyVPC.id}"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"   #To make it Public 
  availability_zone       = "us-east-1a" 

  tags = {
    Name = "My-Public-Subnet"
  }
}

#Private Subnet 
resource "aws_subnet" "Private-subnet" {
  vpc_id                  = "${aws_vpc.MyVPC.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "false"   #To make it private
  availability_zone       = "us-east-1a"

  tags = {
    Name = "My-Private-Subnet01"
  }
}


resource "aws_subnet" "Private-subnet2" {
  vpc_id                  = "${aws_vpc.MyVPC.id}"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "false"  #To make it private
  availability_zone       = "us-east-1a"

  tags = {
    Name = "My-Private-Subnet02"
  }
}

