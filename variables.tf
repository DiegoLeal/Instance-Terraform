variable "environment" {
    type = string
    description = "Atividade Terraform"
}

variable "aws_region" {
    type = string
    description = ""
    default = "us-east-1"
}

variable "instance_ami" {
    type = string
    description = ""
    default = "ami-09d56f8956ab235b3"
}

variable "instance_type" {
    type = string
    description = ""
    default = "t2.micro"
}

variable "key_name" {
    default = "t2micro"
} 

variable "cidrs_acesso_remoto" {
    type = list
    description = ""
    default = ["0.0.0.0/0"]
}

variable "instance_tags" { 
    description = ""
    type        = map(string)
    default     = {
        name = "Engenharia de Software"
        project     = "7º Periodo",
        environment = "Diego Leal"
    }
}