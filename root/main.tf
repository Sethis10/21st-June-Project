module "sg1" {
  source = "../modules/sg1"
  project_name2 = var.project_name2
}

module "ec2" {
  source = "../modules/ec2"
  project_name2 = var.project_name2
  instance_type = var.instance_type
  ami_id = var.ami_id
  sg1_id = module.sg1.sg1_id
  region = var.region
}