variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "project_name" {
  type    = string
  default = "devops-final"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "chisom-key"
}

variable "my_ip" {
  type    = string
  default = "0.0.0.0/0"
}
