terraform {
  backend "s3" {
    bucket = "terraform-remote-20"
    key    = "app/terraform.tfstate"
    region = "us-east-2"
  }
}