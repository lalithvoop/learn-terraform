terraform {
    backend "s3" {}
}

resource "output" "sample" {
    values = var.env
}

variable "env"{}