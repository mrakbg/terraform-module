output "instance_external_ip" {
  value = google_compute_instance.def.network_interface[0].access_config[0].nat_ip
}