variable "ami" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Ubuntu 20.04 LTS in us-east-1
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched"
}

variable "vpc_id" {
  description = "The ID of the VPC"
}
