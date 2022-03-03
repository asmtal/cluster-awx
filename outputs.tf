output "ip_externo" {
  value       = google_compute_instance.awx-instance[*].network_interface.0.access_config.0.nat_ip
  description = "IP externo da VM"
}