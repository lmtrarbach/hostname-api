provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "microservices-deploy" {
  for_each = { 
      "hostname-api" = "https://lmtrarbach.github.io/hostname-api/"
  }
  name = each.key

  repository = each.value
  chart      = each.key
  namespace  = "default"
}
