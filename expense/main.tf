resource "aws_instance" "vms-1" {
    for_each = var.instance_type
    ami = var.ami-value
    vpc_security_group_ids =  var.vpc-group-id
    instance_type = each.value[instance_type]
    tags = {
        Name = each.key
    }

}

variable "ami-value" {
    default = "ami-05f020f5935e52dc4"
}

variable "vpc-group-id" {
    default = ["sg-01ab91863562a96bf"]
}

variable "instance_type" {
    default = {
        frontend = {
            instance_type = "t3.micro"
        }
        mysql = {
            instance_type = "t3.small"
        }
        backend = {
            instance_type = "t3.micro"
        }
    }
}