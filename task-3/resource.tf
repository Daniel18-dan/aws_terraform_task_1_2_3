resource "aws_instance" "dan-ec2" {
  ami     = var.ami_id
  instance_type = var.instance_type
}
