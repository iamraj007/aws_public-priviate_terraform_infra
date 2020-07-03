resource "aws_internet_gateway" "My-Internet-GW" {
  vpc_id = "${aws_vpc.MyVPC.id}"

  tags = {
    Name = "My-InternetGW"
  }
}
