# Variables file
variable "aws_main_region" {
  type = string
  description = "Main Backend Region"
  default = "eu-central-1"
}

variable "ami_id" {
  type = string
  description = "ami ID"
  default = "ami-0764964fdfe99bc31"
}

variable "ec2_instance_type" {
  type = string
  description = "EC2 Instance type"
  default = "t2.micro"
}

variable "instance_count" {
  default = "2"
}

variable "sec_group_name" {
  default = "Demo Security Group"
}

variable "sec_group_description" {
  default = "Demo Security Group - allow All Trafic to My IP"
}

variable "volume_size" {
  default = 8
}

variable "ip_list" {
  description = "Allowed IPs"
  type = list(string)
  default = [
    "0.0.0.0/0",
  ]
}

variable "port_list" {
  description = "Allowed ports"
  type = list(number)
  default = [
    22,
    80,
    8080,
  ]
}
