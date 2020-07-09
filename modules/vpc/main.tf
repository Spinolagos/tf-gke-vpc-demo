#APIS
resource "google_project_service" "service_networking_googleapis_com" {
 project                    = "${var.project}"
 service                    = "servicenetworking.googleapis.com"
 disable_dependent_services = false
 disable_on_destroy         = false
}
resource "google_project_service" "compute_googleapis_com" {
 project                    = "${var.project}"
 service                    = "compute.googleapis.com"
 disable_dependent_services = false
 disable_on_destroy         = false
}
#Network
resource "google_compute_network" "private_network" {
  name                    = "${var.name}"
  auto_create_subnetworks = "false"
  depends_on = [google_project_service.service_networking_googleapis_com,
                google_project_service.compute_googleapis_com]
  }
