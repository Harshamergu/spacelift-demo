#output "aws_instances" {
# value = [for instance in aws_instance.this : instance.public_ip]
#}

output "instances" {
  description = "Public IPs of EC2 instances"
  value       = [for instance in aws_instance.this : instance.public_ip]
}
