#output "aws_instances" {
 # value = [for instance in aws_instance.this : instance.public_ip]
#}

output "instances" {
  value = {
    for k, v in aws_instance.this :
    k => v.public_ip
  }
}
