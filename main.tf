provider "aws" {
  region = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = "vmadbro-terraform-state"
        key = "terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-state"
    }
}

resource "aws_instance" "remote"{
    ami = "ami-09d95fab7fff3776c"
    instance_type = "t2.micro"

    tags = {
        Name = "Pipeline build"
    }
}
