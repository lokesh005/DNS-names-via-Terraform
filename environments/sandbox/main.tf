#--------------------------------------------------------------
# AWS
#--------------------------------------------------------------
provider "aws" {
  region  = "${var.region}"
  profile = "sandbox"
  version = "~> 1.30"
}

#--------------------------------------------------------------
# DNS
#--------------------------------------------------------------
module "dns_project_compute" {
  source = "../../modules/instances"

  roam_env                  = "${var.env}"
  region                    = "${var.region}"
  private_domain_zone_name  = "lokeshsandbox.net"
  private_domain_zone_id    = "${var.private_domain_zone_id}"
  project_instance_type     = "${var.project_instance_type}"
  project_num_instances     = "${var.project_num_instances}"
  ip_address_               = "${join(",", data.terraform_remote_state.get_id123.project_instance_ips)}"
}