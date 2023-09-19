resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = var.subnet_group_name
  #vpc_id     = var.vpc_ids
  subnet_ids = var.subnet_ids
}


resource "aws_db_instance" "aurora_instance" {
  engine               = "mysql"
  instance_class       = var.instance_type
  allocated_storage    = 20
  storage_type         = "gp2"
  db_name              = var.instance_name
  username             = var.username
  password             = var.password
  db_subnet_group_name = aws_db_subnet_group.aurora_subnet_group.name
  vpc_security_group_ids = [aws_security_group.aurora_security_group.id]
}
   

resource "aws_security_group" "aurora_security_group" {
  name        = var.security_group_name
  vpc_id      = var.vpc_ids
  description = "Allow inbound traffic to Aurora MySQL"


  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.source_cidr
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.source_cidr
    ipv6_cidr_blocks = ["::/0"]
  }
}


