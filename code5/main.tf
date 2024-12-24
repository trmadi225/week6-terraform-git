resource "aws_lightsail_instance" "custom" {
  name              = "Dev-server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
  tags = {
    Team      = "DevOps"
    env       = "dev"
    create_by = "terraform"
  }
}

resource "aws_lightsail_key_pair" "my_key" {
  name = "my_key"
}