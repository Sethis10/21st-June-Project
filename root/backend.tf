terraform {
  backend "s3" {
    bucket = "terraform-remote-20"
    key    = "main/terraform.tfstate"
    region = "us-east-2"
  }
}