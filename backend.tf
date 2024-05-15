terraform {
  backend "s3" {
    bucket = "terraform-project-bucket-pranil"
    region = "ap-south-1"
    key    = "eks/terraform.tfstate"
  }
}