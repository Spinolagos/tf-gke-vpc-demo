#CLUSTERS GKE
module "gke" {
  source = "../../modules/gke"
  project =                  "${var.project}"
  cluster_name =             "${var.cluster_name}"
  location   =               "${var.region}"
  initial_node_count =       "${var.initial_node_count}"
  min_master_version =       "${var.min_master_version}"
  name_node_pool  =          "${var.name_node_pool}"
  remove_default_node_pool = "${var.remove_default_node_pool}"
  min_node_count =           "${var.min_node_count}"
  max_node_count =           "${var.max_node_count}"
  node_pools_scopes =        "${var.node_pools_scopes}"
  preemptible =              "${var.preemptible}"
  machine_type =             "${var.machine_type}"
  image_type =               "${var.image_type}"
  tags =                     "${var.tags}"
  network=                   "${module.vpc.private_self_link}"
  subnetwork=                "${google_compute_subnetwork.subnet.self_link}"
  disk_size=                 "${var.disk_size}" 
  master_authorized_networks_cidr_blocks =  "${var.master_authorized_networks_cidr_blocks}"
  master_ipv4_cidr_block =   "${var.master_ipv4_cidr_block_int}"
}
data "template_file" "kubeconfig" {
 count    = var.enable_google ? 1 : 0
 template = file("kubeconfig-template.yml")
 vars = {
   CA_CERTIFICATE   = module.gke.cluster_ca_certificate
   CLUSTER_API_URL  = module.gke.endpoint
   CLUSTER_NAME     = module.gke.name
 }
}
#NETWORK
module "vpc" {
  source = "../../modules/vpc"
  project =     "${var.project}"
  network_name = "${var.network_name}"
}
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.subnetwork_name}"
  region        = "${var.region}"
  network       = "${module.vpc.private_self_link}"
  ip_cidr_range = "10.10.90.0/24"
}


