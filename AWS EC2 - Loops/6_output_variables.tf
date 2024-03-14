#Output variables

#ID of EC2
output "EC2_ID" {
  description = "Verification of ID of EC2"
  value = [for instance in aws_instance.ec2_vm: instance.id]
}

#Public IP output with for loop - list
output "EC2_public_IP_list" {
    description = "Verification of Public IP of EC2"
    value = [for instance in aws_instance.ec2_vm: instance.public_ip]
}
#Public IP output with for loop - map
output "EC2_public_IP_map" {
    description = "Mapping - ID and Public IP"
    value = {for instance in aws_instance.ec2_vm: instance.id => instance.public_ip}
}

#Public DNS output with for loop - map
output "EC2_public_DNS_map" {
    description = "Mapping - ID and Public DNS"
    value = {for instance in aws_instance.ec2_vm: instance.id => instance.public_dns}
}

#Public IP and DNS mapping
output "EC2_public_IP_DNS_map" {
     description = "Mapping - Public IP and Public DNS"
     value = {for instance in aws_instance.ec2_vm: instance.public_ip => instance.public_dns}
}

