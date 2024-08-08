module "web_ec2_sg" {
  source = "../modules/securitygroup"

  security_group_name        = "${local.PROJECT}-${local.SYSTEM}-${var.ENV}-web-ec2-sg-01"
  security_group_description = "webserver security group"
  vpc_id                     = module.vpc_main.vpc_id

  ingress_rules = [
    {
      from_port       = 80
      to_port         = 80
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
      security_groups = []
      description     = "Allow HTTP inbound"
    },
    {
      from_port       = 443
      to_port         = 443
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
      security_groups = []
      description     = "Allow HTTPS inbound"
    },
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all outbound traffic"
    },
  ]
}


module "rds_sg" {
  source = "../modules/securitygroup"

  security_group_name        = "${local.PROJECT}-${local.SYSTEM}-${var.ENV}-aurora-sg-01"
  security_group_description = "aurora security group"
  vpc_id                     = module.vpc_main.vpc_id

  ingress_rules = [
    {
      from_port       = 3306
      to_port         = 3306
      protocol        = "tcp"
      cidr_blocks     = []
      security_groups = [module.web_ec2_sg.security_group_id]
      description     = "Allow webec2 sg"
    },
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all outbound traffic"
    },
  ]
}