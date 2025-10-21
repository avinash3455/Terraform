output "instance_public_ip" {
  description = "Public IP of Ec2"
  value = aws_instance.my_instance.public_ip
}