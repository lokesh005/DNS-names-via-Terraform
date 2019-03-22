output "dns_names_and_their_ip_address" {
  value = "${module.dns_project_compute.dns_names_and_their_ips}"
}
