#Terraform resource
resource "aws_instance" "ec2_vm" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = var.aws_insance_type
    user_data = file("${path.module}/app1_install.sh")
    key_name = var.aws_key_pair
    vpc_security_group_ids = [ aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id ]
    tags = {
        Name = "TestApp"
    }
}