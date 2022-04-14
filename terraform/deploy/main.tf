provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "microservices-deploy" {
  for_each = { 
      "hostname-api" = "https://github.com/lmtrarbach/hostname-api"
  }
  name = each.key

  repository = each.value
  chart      = each.value
  namespace  = "default"
}
