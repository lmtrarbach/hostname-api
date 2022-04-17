variable "application_name" {
  type = map
  default = {
     "hostname-api" = "https://lmtrarbach.github.io/hostname-api/",
     "mariadb"      = "https://charts.bitnami.com/bitnami"
  }
}