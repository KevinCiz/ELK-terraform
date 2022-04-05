variable "region" {
  default = "ap-southeast-1"
}

variable "ami-id" {
  default = "ami-0cebc9110ef246a50" # RHEL-8.5.0
}

variable "private_key_path" {
  default = "mykey.pem"
}

variable "public_key_path" {
  default = "mykey.pub"
}

variable "user" {
  default = "ec2-user"
}
