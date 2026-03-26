output "alb_dns_name" {
  value = aws_lb.web.dns_name
}

output "alb_url" {
  value = "http://${aws_lb.web.dns_name}"
}

output "asg_name" {
  value = aws_autoscaling_group.web.name
}

output "current_version" {
  value = random_id.server.hex
}

output "user_data_file" {
  value = var.user_data_script
}