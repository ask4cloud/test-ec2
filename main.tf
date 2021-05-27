provider "aws" {
  region = var.region
}


module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0cf6f5c8a62fa5da6"
  instance_type          = "t2.micro"
  key_name               = "aws-tek-0729"
  monitoring             = true
  vpc_security_group_ids = var.security_group
  subnet_id              = "subnet-1a4cb447"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

