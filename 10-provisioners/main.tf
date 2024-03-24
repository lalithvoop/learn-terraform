resource "aws_instance" "resource" {
    ami = "ami-05f020f5935e52dc4"
    instance_type = "t3.small"
    vpc_security_group_ids = ["vpc-06562b7d0fb5fc1cb"]
    
    connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx",
      "sudi systemctl start nginx"
    ]
  }


}