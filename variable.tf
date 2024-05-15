variable "aws_region" {
  default = "ap-south-1"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "tags" {
  type = map(string)
  default = {
    name    = "amazon"
    env     = "dev"
    project = "jenkins"
  }
}
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}
variable "subnet_cidr_block" {
  default = "10.0.10.0/24"
}
variable "avail_zone" {
  default = "ap-south-1a"
}