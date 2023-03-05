# module "test" {
#   source = "./modules/nginx"
#   access_key = var.access_key
#   secret_key = var.secret_key
#   docker_container = var.docker_container
#   external_port = var.external_port
# }

# module "aws" {
#   source         = "./modules/aws"
#   instance_name  = var.instance_name
#   securety_group = var.securety_group
#   ami            = var.ami
#   instance_type  = var.instance_type
# }

# resource "aws_s3_bucket" "tf-bucket" {
#   bucket = "tf-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

module "k8s" {
  source = "./modules/k8s"
  cluster_name = var.cluster_name
  sec_grop_eks = var.sec_grop_eks
  sec_group_node = var.sec_group_node
  node_group_name = var.node_group_name
  node_role_name = var.node_role_name
  vpc_name = var.vpc_name
}
