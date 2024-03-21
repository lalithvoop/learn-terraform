resource "aws_instance" "sample"{
    ami = var.ami-value
    instance_type = var.instance-type
    vpc_security_group_ids = var.vpc-group-id

    tags = {
        Name = "frontend"
    }
}

resource "aws_instance" "sample2"{
    ami = var.ami-value
    instance_type = var.instance-type
    vpc_security_group_ids = var.vpc-group-id
    tags = {
        Name = "backend"
    }
}

resource "aws_instance" "sample3"{
    ami = var.ami-value
    instance_type = var.instance-type
    vpc_security_group_ids = var.vpc-group-id
    tags = {
        Name = "mysql"
    }
}