variable "num" {

}

output "num" {
    value = var.num > 10 ? "number is greater than 10" : "number is less than or equal to 10"
}