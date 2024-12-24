output "my_public_ip" {
  value = aws_lightsail_instance.mommy.public_ip_address
}

output "my_private_ip" {
  value = aws_lightsail_instance.mommy.private_ip_address
}
