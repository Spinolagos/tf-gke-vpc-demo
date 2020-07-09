#variables generales del proyecto
variable "project" {
  default = "xxxx"
}
variable "zone" {
  default = "us-east4-a"
}
variable "region" {
  default = "us-east4"
}
variable "enable_google" {
  type = bool
  default = true
}
#GKE de integración
variable "cluster_name" {
    default = "gke-name"
}
variable "initial_node_count" {
  default = 2
}
variable "min_master_version" {
  default = "1.16.9-gke.6"
}
variable "name_node_pool" {
  default = "default"
}
variable "remove_default_node_pool" {
  default = "true"
}
variable "min_node_count" {
  default = 2
}
variable "max_node_count" {
  default = 4
}
variable "node_pools_scopes" {
  default = [ "https://www.googleapis.com/auth/compute",
  "https://www.googleapis.com/auth/monitoring.write",
  "https://www.googleapis.com/auth/logging.write",
  "https://www.googleapis.com/auth/monitoring"
]
}
variable "master_authorized_networks_cidr_blocks" {
  default = [
      {cidr_block = "1.1.1.1/32"
      display_name = "ip mi casa"},
  ]
}
variable "master_ipv4_cidr_block_int" {
  default = "10.10.80.0/28"
}
variable "preemptible" {
  default = "false"
}
variable "machine_type" {
  default = "n1-standard-4"
}
variable "image_type" {
  default = "COS"
}
variable "tags" {
  default = ["tag",]
}
variable "disk_size" {
  default = 100
}

#Network
variable "network_name" {
  default = "network"
}
variable "subnetwork_name" {
  default = "subnet"
}

