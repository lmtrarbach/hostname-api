output "services" {
  description = "External access for applications"
    value = [
    for application in data.kubernetes_service.services-output : application.spec
   ]  
  }

  output "database" {
  description = "External access for applications"
    value = helm_release.database-deploy.values
  }