# to get public ip adddress
output "public_ip" {
  value       = aws_instance.this.public_ip
}

# to get private ip adddress
output "private_ip" {
  value       = aws_instance.this.private_ip
}

# to get instance_id
output "instance_id" {
  value       = aws_instance.this.instance_id
}

