module "sg" {
  source = "../modules/sg"
  project_name2 = var.project_name2
}

module "ec2" {
  source = "../modules/ec2"
  project_name2 = var.project_name2
  instance_type = var.instance_type
  ami_id = var.ami_id
  sg_id = module.sg.sg_id
  region = var.region
}