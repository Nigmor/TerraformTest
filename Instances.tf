resource "aws_instance" "TestTest" {
  ami           = "ami-acbd84cd"
  instance_type = "t2.medium"
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  subnet_id = aws_subnet.subnet_public.id
  associate_public_ip_address = true
  key_name = "mantech-test"
  tags = {
   Name = "TestTest"
 }
  root_block_device {
   volume_type = "gp2"
   volume_size = 50
 }
}
