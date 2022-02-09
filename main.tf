module "myVPC" {
  source               = "github.com/JoelCi/terraformOverview/modules/vpc"
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  private_subnets_cidr = var.private_subnets_cidr
  public_subnets_cidr  = var.public_subnets_cidr

}
module "publicEC2" {
  source        = "github.com/JoelCi/terraformOverview/modules/ec2Instances"
  aws_subnet_id = module.myVPC.aws_subnet_public_subnet_id
  numberOfEC2   = var.numberOfPublicEC2
  environment   = var.environment
  type          = "public"
}

module "privateEC2" {
  source        = "github.com/JoelCi/terraformOverview/modules/ec2Instances"
  aws_subnet_id = module.myVPC.aws_subnet_private_subnet_id
  numberOfEC2   = var.numberOfPrivateEC2
  environment   = var.environment
  type          = "private"
}
