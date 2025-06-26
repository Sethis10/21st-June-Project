resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami = var.ami_id
  key_name = "My_key1"
  vpc_security_group_ids = [var.sg_id]
  user_data = file("install.sh")

  tags = {
    Name = "${var.project_name2}-web-server"
  }
}