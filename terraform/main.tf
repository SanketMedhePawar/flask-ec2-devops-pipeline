provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "allow_web" {
  name        = "allow_web_traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "flask_ec2" {
  ami           = "ami-0e670eb768a5fc3d4"  # Mumbai Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "devkey"               # Replace with your key
  user_data     = file("user-data.sh")

  vpc_security_group_ids = [aws_security_group.allow_web.id]

  tags = {
    Name = "FlaskAppServer"
  }
}

