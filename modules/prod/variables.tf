variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "example"
}

variable "securety_group" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "securety_group"
}
variable "key_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "example"
}
variable "ami" {
  description = "instabce_ami"
  type        = string
  default     = "ami-2757f631"
}

variable "instance_type" {
  description = "instatce_tpe"
  type        = string
  default     = "t2.micro"
}

variable "secret_key" {
  description = "instatce_tpe"
  type        = string
  default     = "t2.micro"
}

variable "access_key" {
  description = "instatce_tpe"
  type        = string
  default     = "t2.micro"
}

###
variable "vpc_name" {
  description = ""
  type        = string
  default     = "VPC_NAME"
}
variable "sec_grop_eks" {
  description = ""
  type        = string
  default     = "sec_group_cluster"
}
variable "sec_group_node" {
  description = ""
  type        = string
  default     = "sec_group_node"
}
variable "node_role_name" {
  description = ""
  type        = string
  default     = "node_role"
}
variable "node_group_name" {
  description = ""
  type        = string
  default     = "node_group_name"
}
variable "cluster_name" {
  description = ""
  type        = string
  default     = "eks_cluster"
}