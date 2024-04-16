resource "aws_instance" "ec2" {
    ami = "ami-0440d3b780d96b29d"
    instance_type = "t2.micro"
    key_name = "valuekeypair"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id ]
    tags = {
        Name = "Terraform_VPC_EC2"
    }
}