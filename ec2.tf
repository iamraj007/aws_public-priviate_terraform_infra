resource "aws_instance" "Public-bastion-instance" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.nano"
  subnet_id     = "${aws_subnet.Public-subnet.id}"
  security_groups = ["${aws_security_group.My-sg-ssh-allow.id}"]
#  security_group_id  = [aws_security_group.My-sg-ssh-allow.id, aws_security_group.My-sg-http-allow-pub.id]

  key_name = "infra-home" 
  
  tags = {
    Name        = "Public-bastion"
    Environment = "DEV"
    Onwer       = "Me"  
#    Created     = formatdate("DD MMM YYYY", timestamp())    
  }
}

resource "aws_instance" "Private-instance1" {
  ami           = "ami-0affd4508a5d2481b" 
  instance_type = "t2.nano"
  subnet_id     = "${aws_subnet.Private-subnet.id}"
  security_groups = ["${aws_security_group.My-sg-ssh-allow.id}"]
  key_name      = "infra-home"
  tags = {
    Name        = "Private-instance01"
    Onwer       = "Me"  
  }
  depends_on = ["aws_nat_gateway.MyNAT-GW"]
}


resource "aws_instance" "Private-instance2" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.nano"
  subnet_id     = "${aws_subnet.Private-subnet2.id}"
  security_groups = ["${aws_security_group.My-sg-ssh-allow.id}"]
  key_name      = "infra-home"
  tags = {
    Name = "Private-instance02"
    Onwer       = "Me"  
  }
  depends_on = ["aws_nat_gateway.MyNAT-GW"]
}



#resource "aws_key_pair" "mykeypair" {
#  key_name   = "mykeypair"
#  public_key = file(var.key_path)
#}

