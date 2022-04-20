variable "application_name" {
  type = map
  default = {
     "hostname-api" = "https://lmtrarbach.github.io/hostname-api/"
  }
} 

variable "database_password" {
  type = string
  default = "c7LOeDB20IUuffaL"

}

variable "database_user" {
  type = string
  default = "c7LOeDB20IUuffaL"

}