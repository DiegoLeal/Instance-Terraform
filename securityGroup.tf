resource "aws_security_group" "acesso-ssh-http" {
    name        = "acesso-ssh-http"
    description = "acesso-ssh-http"

ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cidrs_acesso_remoto
}

ingress {
    description = "HTTP to EC2"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.cidrs_acesso_remoto
}

ingress {
    description = "HTTPS to EC2"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.cidrs_acesso_remoto
}

ingress {
    description = "HTTP to EC2"
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = var.cidrs_acesso_remoto
}

    tags = {
    Name = "ssh_http"
    }
}