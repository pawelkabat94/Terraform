#Input variables

#AWS region
variable "aws_region" {
    description = "AWS region in which resources are created"
    type = string
    default = "us-east-1"
}

#AWS EC2 instance type
variable "aws_insance_type" {
    description = "Instance type of EC2"
    type = string
    default = "t2.micro"
}

#AWS key pair
variable "aws_key_pair" {
    description = "Key pair which is used for SSH action"  
    type = string
    default = "valuekeypair"
}


