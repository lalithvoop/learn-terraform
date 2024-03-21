resource "aws_instance" "sample"{
    ami = var.ami-value
    instance_type = var.instance-type
}

resource "aws_instance" "sample2"{
    ami = var.ami-value
    instance_type = var.instance-type
}

resource "aws_instance" "sample3"{
    ami = var.ami-value
    instance_type = var.instance-type
}

variable "ami-value" {
    default = "ami-05f020f5935e52dc4"
}

variable "instance-type" {
    default = "t3.micro"
}