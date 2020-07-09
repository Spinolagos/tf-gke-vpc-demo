#-------cluster------------#
variable "cluster_name" {}
variable "location" {}
variable "initial_node_count" {}
variable "min_master_version" {}
variable "remove_default_node_pool" {}
variable "project"{}
variable "network"{}
variable "subnetwork"{}
variable "master_authorized_networks_cidr_blocks" {
  type = list(map(string))
  default = []
}
variable "master_ipv4_cidr_block"{}
#-----NodePool----------#
variable "name_node_pool"{}
variable "min_node_count"{}
variable "max_node_count"{}
variable "node_pools_scopes"{
    type            = "list"
}
variable "preemptible"{}
variable "machine_type"{}
variable "image_type"{}
variable "tags"{}

variable "disk_size"{}  