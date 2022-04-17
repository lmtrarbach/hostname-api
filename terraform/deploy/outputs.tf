output "services" {
  description = "External access for applications"
    value = [
    for application in data.kubernetes_service.services-output : application.spec
  ]
    
  }