#Output variables

#Public IP output
output "EC2_public_IP" {
    description = "Verification of Public IP of EC2"
    value = aws_instance.ec2_vm.public_ip
}

#Public DNS output
output "EC2_public_DNS" {
    description = "Verification of Public DNS of EC2"
    value = aws_instance.ec2_vm.public_dns
}

#ID of EC2
output "EC2_ID" {
  description = "ID of EC2"
  value = aws_instance.ec2_vm.id
}