variable "access_key" {}
variable "secret_key" {}

variable "region" {
    type = string
    description = "aws region where the VM will be provisioned"
    # change to your aws region 
    default = "us-east-2"     
}

variable "ami" {
    type = string
    description = "aws ami used to provision the VM"
    # this is the ami of t2micro i need terraform to create in my vpc
    default = "ami-024e6efaf93d85776"   
}

variable "instance_ssh_public_key" {
    type = string
    description = "your ssh public key"
}

data "http" "my_public_ip" {
    url = "https://ifconfig.co/json"
    request_headers = {
        Accept = "application/json"
    }
}

locals {
    my_ip = (data.http.my_public_ip.body)
}