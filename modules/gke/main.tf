# container.googleapis.com
resource "google_project_service" "container-googleapis-com" {
 project = "${var.project}"
 disable_dependent_services = true
 service = "container.googleapis.com"
}

resource "google_container_cluster" "default" {

  name                     = "${var.cluster_name}"
  location                 = "${var.location}"
  initial_node_count       = "${var.initial_node_count}"
  remove_default_node_pool = "${var.remove_default_node_pool}"
  min_master_version       = "${var.min_master_version}"
  network                  = "${var.network}"
  subnetwork               = "${var.subnetwork}"
  logging_service          = "logging.googleapis.com/kubernetes"
  monitoring_service       = "monitoring.googleapis.com/kubernetes"

  master_authorized_networks_config {
    dynamic "cidr_blocks" {
      for_each = var.master_authorized_networks_cidr_blocks
      content {
        cidr_block   = cidr_blocks.value.cidr_block
        display_name = cidr_blocks.value.display_name
      }
    }
  }
  private_cluster_config{
    enable_private_nodes      = true
    enable_private_endpoint   = false
    master_ipv4_cidr_block    = "${var.master_ipv4_cidr_block}"
  }
  
  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }
  

  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = true
    }
    network_policy_config {
      disabled = true
    }
    
  }
   ip_allocation_policy {
 }
  depends_on = [google_project_service.container-googleapis-com]
}

resource "google_container_node_pool" "node_pool_regional" {
  name               = "${var.name_node_pool}"
  location           = "${var.location}"
  cluster            = google_container_cluster.default.name
  initial_node_count = "${var.initial_node_count}"
  
  
  autoscaling {
    min_node_count = "${var.min_node_count}"
    max_node_count = "${var.max_node_count}"
  }
  
  management{
    auto_upgrade    = true
  }

  node_config {
    oauth_scopes = "${var.node_pools_scopes}"
    preemptible  = "${var.preemptible}"
    machine_type = "${var.machine_type}"
    image_type   = "${var.image_type}"
    tags =         "${var.tags}"
    disk_size_gb = "${var.disk_size}"
    
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }


}
