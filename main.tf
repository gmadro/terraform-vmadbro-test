provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "remote"{
    ami = "ami-09d95fab7fff3776c"
    instance_type = "t2.micro"

    tags = {
        Name = "Pipeline build"
    }
}
