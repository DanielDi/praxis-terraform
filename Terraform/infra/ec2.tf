resource "aws_instance" "group7-ec2" {
  ami                         = var.ami_id #ami-005de95e8ff495156
  instance_type               = var.instance_type
  tags                        = var.ec2_tags
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.public_ip
  security_groups             = [aws_security_group.group7-sg.id]
  key_name                    = var.key_pair_name
  user_data                   = var.user_data #context where is executed
}