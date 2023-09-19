module "vpc" {
  source               = "../input-modules/vpc"
  region               = "us-west-2"
  vpc-cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  db_subnet_cidrs      = ["10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24"]
  azs                  = ["us-west-2a", "us-west-2b", "us-west-2c"]
  Project_Name         = "projectvpc"
}