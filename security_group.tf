resource "aws_security_group" "My-sg-ssh-allow" {
  vpc_id      = "${aws_vpc.MyVPC.id}"
  name        = "ssh-allow"
  description = "Security group allows ssh & all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG-SSH_Allow"
  }
}

