variable "ec2_ami" {
  type    = string
  default = "ami-02e136e904f3da870"
}

variable "key_name" {
  description = "Nome da chave SSH para acessar a instância"
  type        = string
}

variable "vpc_cidr" {}
variable "vpc_id" {}
variable "subnet_az1a_id" {}
variable "subnet_az1b_id" {}
