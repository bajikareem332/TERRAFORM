resource "aws_instance" "my_instance" {
  ami = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  count = 1
  key_name = "munna"
  tags = {
    Name = "QA ${count.index+1}"
  }
}

resource "aws_security_group" "my_SG1" {
  name = "my_SG1"
  ingress {
    to_port = 22
    protocol = "tcp"
    from_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    to_port = 0
    from_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
