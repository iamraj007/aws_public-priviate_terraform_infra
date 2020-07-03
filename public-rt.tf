resource "aws_route_table" "Public-RT" {
  vpc_id = "${aws_vpc.MyVPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.My-Internet-GW.id}"
  }
        tags = {
        Name = "MyPublic-RT"
        }
}

resource "aws_route_table_association" "Public-RTA" {
  subnet_id      = "${aws_subnet.Public-subnet.id}"
  route_table_id = "${aws_route_table.Public-RT.id}"
}
