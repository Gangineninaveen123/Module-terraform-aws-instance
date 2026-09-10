# to get public ip adddress referring to [terraform aws instance in google]
output "public_ip" {
  value       = aws_instance.this.public_ip
}

# to get private ip adddress
output "private_ip" {
  value       = aws_instance.this.private_ip
}

# to get instance_id
output "instance_id" {
  value       = aws_instance.this.id # here in modue, [id] only should use , not [instance_id], checkin mandatory files ec2 instace
}

