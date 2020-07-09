output "private_self_link" {
  value       = "${google_compute_network.private_network.self_link}"
  description = "VPC"
}
output "name" {
  value       = "${google_compute_network.private_network.name}"
  description = "VPC"
}
