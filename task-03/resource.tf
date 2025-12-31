resource "aws_instance" "dan-ec2" {
  ami     = var.ami_id
  instance_type = var.instance_type
}

  tags = {
    Name        = "terraform-ec2-${var.environment}"
    Environment = var.environment
    Owner       = var.owner
  }
}



