output "alb_dns_name" {
  value = aws_lb.web.dns_name
}

output "alb_url" {
  value = "http://${aws_lb.web.dns_name}"
}

output "active_environment" {
  value = var.active_environment
}

output "blue_target_group" {
  value = aws_lb_target_group.blue.arn
}

output "green_target_group" {
  value = aws_lb_target_group.green.arn
}

output "blue_asg_name" {
  value = aws_autoscaling_group.blue.name
}

output "green_asg_name" {
  value = aws_autoscaling_group.green.name
}

output "switch_command" {
  value = "To switch to green: terraform apply -var='active_environment=green'"
}