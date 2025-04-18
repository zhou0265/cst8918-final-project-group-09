provider "kubernetes" {
  host                   = var.aks_host
  client_certificate     = base64decode(var.aks_client_certificate)
  client_key             = base64decode(var.aks_client_key)
  cluster_ca_certificate = base64decode(var.aks_cluster_ca_certificate)
}

resource "kubernetes_deployment" "weather_app" {
  metadata {
    name      = "weather-app"
    namespace = "default"
    labels = {
      app = "weather-app"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "weather-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "weather-app"
        }
      }

      spec {
        container {
          image = "cst8918acr109.azurecr.io/weather-app:latest"
          name  = "weather-app"
          port {
            container_port = 3000
          }
          
          env {
            name  = "WEATHER_API_KEY"
            value = var.weather_api_key
          }

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "0.2"
              memory = "256Mi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "weather_app" {
  metadata {
    name      = "weather-app-service"
    namespace = "default"
  }

  spec {
    selector = {
      app = "weather-app"
    }

    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}