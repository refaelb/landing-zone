# terraform {
#   required_version = ">= 1.3.1"
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = ">= 4.50.0" # tftest
#     }
#     google-beta = {
#       source  = "hashicorp/google-beta"
#       version = ">= 4.50.0" # tftest
#     }
#   }
# }

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

