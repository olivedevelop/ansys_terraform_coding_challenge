include "vpc.tf"
include "ec2.tf"

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}

output "private_subnets" {
  value = aws_subnet.private_subnet[*].id
}

output "ec2_instance_id" {
  value = aws_instance.my_ec2_instance.id
}

output "ec2_instance_public_ip" {
  value = aws_instance.my_ec2_instance.public_ip
}