module "rds" {
  source               = "../input-modules/rds"
  vpc_ids               = module.vpc.vpc_id
  subnet_ids           = module.vpc.db_subnet_ids
  subnet_group_name    = "dbsubnetgroup"
  security_group_name  = "aurorasecuritygroup"
  source_cidr          = ["0.0.0.0/0"]
  instance_type        = "db.t3.medium"
  instance_name        = "auroradbinstance"
  username             = "admin"
  password             = "asheer786"

}