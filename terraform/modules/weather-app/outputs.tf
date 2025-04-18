output "weather_app_service_ip" {
  description = "The external IP address of the weather app service"
  value       = kubernetes_service.weather_app.status[0].load_balancer[0].ingress[0].ip
}