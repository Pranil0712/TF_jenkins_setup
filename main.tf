resource "aws_instance" "myapp-server" {
  ami                         = "ami-0e4fd655fb4e26c30"
  instance_type               = var.instance_type
  key_name                    = "linux"
  subnet_id                   = aws_subnet.my-app-subnet.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("jenkins_script.sh")
  tags                        = var.tags
}