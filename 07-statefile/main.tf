terraform {
    backend "s3"{
        bucket = "vsltfbucket"
        key = "sample/statefile"
        region = "us-east-1"
    }
}

resource "null_resource" "sample" {}