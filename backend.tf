terraform {
  backend "s3" {
    bucket  = "daniel-terrafrom-state-123"
    key     = "task1/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
