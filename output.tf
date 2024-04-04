# # outputs you can kist required endpoints, ip or instanceid's

# output "alb_hostname" {
#   value = aws_alb.alb.dns_name
# }

output "instance-public_ip" {
  value     = aws_instance.dev-team[*].public_ip
  sensitive = true
}

output "instance-id" {
  value = aws_instance.dev-team[*].id
}