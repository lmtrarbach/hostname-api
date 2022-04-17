provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "microservices-deploy" {
  for_each = var.application_name
  name = each.key

  repository = each.value
  chart      = each.key
  namespace  = "default"
}

data "kubernetes_service" "services-output" {
  for_each = var.application_name
  metadata {
    name = each.key
  }
  depends_on = [
      "helm_release.microservices-deploy"
    ]
}
