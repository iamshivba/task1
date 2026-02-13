output "instance_public_ip" {
    description = "Public ip of all instance"
    value = aws_instance.ec2_instance.public_ip
}

output "instance1_public_ip" {
    description = "Public ip of all instance1"
    value = aws_instance.ec2_instance1.public_ip
}

output "instance_id" {
     description = "instance id of all instance"
     value = aws_instance.ec2_instance.id
}

output "instance1_id" {
     description = "instance id of all instance1"
     value = aws_instance.ec2_instance1.id
}

output "security_group_id" {
     description = "security group id"
     value = aws_security_group.task1.id
}
