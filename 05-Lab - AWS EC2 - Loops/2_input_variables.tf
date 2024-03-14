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

#AWS EC2 instance type - list
variable "aws_insance_type_list" {
    description = "List of instance type of EC2"
    type = list(string)
    default = [ "t2.micro", "t2.small", "t2.large" ]
}

#AWS EC2 instance type - map
#variable "aws_insance_type_map" {
    #description = "Map of instance type of EC2"
    #type = list(map)
    #default = {
        #"dev" = "t2.micro"
        #"qa" = "t2.small"
        #"prod" = "t2.large"
        #}
#}
