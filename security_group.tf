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


resource "aws_security_group" "My-sg-http-allow-pub" {
  vpc_id      = "${aws_vpc.MyVPC.id}"
  name        = "http-allow-pub-${var.env}"
  description = "Allow HTTP Port Ingress from pub!"

  egress {
    description = "Allow out traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow http ingress"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow http secure port ingress"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name           = "HTTP-Allow-Pub"
    Internetfacing = "Yes"
  }
}


