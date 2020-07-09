resource "google_compute_router" "router" {
  name    = "${var.router_name}"
  region  = "${var.region}"
  network = "${var.network}" 
}

resource "google_compute_router_nat" "nat_automatic" {
  name                                = "${var.router_nat_name}"
  router                              = "${google_compute_router.router.name}"
  region                              = "${google_compute_router.router.region}"

  nat_ip_allocate_option              = "${var.nat_ip_allocate_option}"
  source_subnetwork_ip_ranges_to_nat  = "${var.source_subnetwork_ip_ranges_to_nat}"

  log_config {
    enable = "${var.log_config_enable}"
    filter = "${var.log_config_filter}"
  }

}
