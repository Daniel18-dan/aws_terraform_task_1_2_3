resource "aws_instance" "dan-ec2" {
  ami     = var.ami_id
  in_type = var.in_type
}
