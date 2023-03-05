resource "google_folder" "ro" {
  display_name = "root_org"
  parent       = "organizations/569511556310"

}

provider "google" {
  region = "us-east-1"
  alias  = "us"
}

module "dev" {
  source = "./modules/dev"
  # region  = "us-east-1"
  # root_org = root_org.name
}

