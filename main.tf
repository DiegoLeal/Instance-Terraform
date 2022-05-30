provider "aws" {    
    region  = var.aws_region   
}

resource "aws_instance" "web" {
    ami           = var.instance_ami
    instance_type = var.instance_type
    key_name = var.key_name
    user_data     = file("init-script.sh")

    tags          = var.instance_tags

    vpc_security_group_ids = ["${aws_security_group.acesso-ssh-http.id}"]
    depends_on = [
        aws_db_instance.db-atividade04
    ]
    associate_public_ip_address = true
}