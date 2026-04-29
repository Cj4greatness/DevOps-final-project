output "server_public_ip" {
  description = "Public IP of your server"
  value       = aws_instance.app_server.public_ip
}

output "portfolio_url" {
  description = "Portfolio app URL"
  value       = "http://${aws_instance.app_server.public_ip}:80"
}

output "java_app_url" {
  description = "Java app URL"
  value       = "http://${aws_instance.app_server.public_ip}:8080"
}