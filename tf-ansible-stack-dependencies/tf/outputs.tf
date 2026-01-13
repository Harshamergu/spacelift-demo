output "public_ips" {
  value = [for i in aws_instance.this : i.public_ip]
}
