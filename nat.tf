resource "aws_eip" "MyNat-eip" {
  vpc = true
}

resource "aws_nat_gateway" "MyNAT-GW" {
  allocation_id = "${aws_eip.MyNat-eip.id}"
  subnet_id     = "${aws_subnet.Public-subnet.id}"
  depends_on    = ["aws_internet_gateway.My-Internet-GW"]
}

resource "aws_route_table" "Private-RT" {
  vpc_id = "${aws_vpc.MyVPC.id}"
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.MyNAT-GW.id}"
  }
        tags = {
        Name = "MyPrivate-RT"
        }

}

resource "aws_route_table_association" "Private-RTA" {
  subnet_id      = "${aws_subnet.Private-subnet.id}"
  route_table_id = "${aws_route_table.Private-RT.id}"
}

#Subnet2 associate with 
resource "aws_route_table_association" "Private-RTA2" {
  subnet_id      = "${aws_subnet.Private-subnet2.id}"
  route_table_id = "${aws_route_table.Private-RT.id}"
}

