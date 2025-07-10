resource "aws_instance" "server" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  associate_public_ip_address = true

  root_block_device {
    delete_on_termination = true
    volume_size = 10
    volume_type = "gp3"
  }
}