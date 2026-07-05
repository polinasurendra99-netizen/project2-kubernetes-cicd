output "instance_id" {
  description = "Target EC2 Instance ID"
  value       = aws_instance.target_server.id
}

output "public_ip" {
  description = "Target EC2 Public IP"
  value       = aws_instance.target_server.public_ip
}

output "public_dns" {
  description = "Target EC2 Public DNS"
  value       = aws_instance.target_server.public_dns
}
