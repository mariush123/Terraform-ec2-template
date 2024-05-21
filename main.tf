resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name = "sshkey" #or aws_key_pair.key_name.sshpemkey

  tags = {
    Name = "Test_instance"
  }
}

/*resource "tls_private_key" "rsa_4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_name" {
  key_name   = var.key_name
  public_key = tls_private_key.rsa_4096.public_key_openssh
}

resource "local_file" "private_key"{
  content = tls_private_key.rsa_4096.private_key_pem
  filename = var.sshpemkey
}
*/