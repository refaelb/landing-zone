## host project in  a root folder 
resource "google_compute_shared_vpc_host_project" "host_dev" {
  project = "host-project-id"
  # folder_id  = var.root_org.id
}
## service projects in a host project
resource "google_compute_shared_vpc_service_project" "develop" {
  host_project    = google_compute_shared_vpc_host_project.host_dev.project
  service_project = "service-project-id-1"
}

resource "google_compute_shared_vpc_service_project" "devops" {
  host_project    = google_compute_shared_vpc_host_project.host_dev.project
  service_project = "service-project-id-2"
}

resource "google_compute_shared_vpc_service_project" "qa" {
  host_project    = google_compute_shared_vpc_host_project.host_dev.project
  service_project = "service-project-id-3"
}


## vpc in the project
resource "google_compute_network" "vpc_network_develop" {
  name = "vpc-network-develop"
  auto_create_subnetworks = false
  project = "develop"
}

resource "google_compute_network" "vpc_network_devops" {
  name = "vpc-network-devops"
  auto_create_subnetworks = false
  project = "devops"
}

resource "google_compute_network" "vpc_network_qa" {
  name = "vpc-network-qa"
  auto_create_subnetworks = false
  project = "qa"
}



## subnet in the vpc
resource "google_compute_subnetwork" "dev_sub_network_develop" {
  name          = "develop-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network_develop.id
  secondary_ip_range {
    range_name    = "secondary-range"
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_subnetwork" "dev_sub_network_devops" {
  name          = "devops-subnetwork"
  ip_cidr_range = "10.3.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network_devops.id
  secondary_ip_range {
    range_name    = "secondary-range"
    ip_cidr_range = "192.168.11.0/24"
  }
}

resource "google_compute_subnetwork" "dev_sub_network_qa" {
  name          = "qa-subnetwork"
  ip_cidr_range = "10.4.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network_qa.id
  secondary_ip_range {
    range_name    = "secondary-range"
    ip_cidr_range = "192.168.12.0/24"
  }
}
