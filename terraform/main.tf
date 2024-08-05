provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_address = true

  tags = {
    Name = "laugenkäsestange"
  }

  vpc_security_group_ids = var.vpc_security_group_ids

  subnet_id = var.subnet_id

  # Optional: Schlüssel für SSH-Zugriff
  key_name = var.key_name
}

output "instance_id" {
  value = aws_instance.example.id
}


output "public_ip" {
  value = aws_instance.example.public_ip
}