
#--------------------------------------------------------------
# DNS entries
#--------------------------------------------------------------
resource "aws_route53_record" "private_hostname" {
  count   = "${var.project_num_instances}"
  zone_id = "${var.private_domain_zone_id}"
  name    = "assignment_project_instance-i${count.index}.${var.private_domain_zone_name}"
  type    = "A"
  ttl     = "300"
  records = ["${element(split(",", var.ip_address_), count.index)}"]
}
