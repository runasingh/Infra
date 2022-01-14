resource "aws_instance" "web" {
  ami           = var.image
  instance_type = var.hardware

  tags = {
    Name = "Server2"
    Env = upper("production")
    Dept = "eng"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
