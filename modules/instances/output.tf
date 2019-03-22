
output "dns_names_and_their_ips" {
  value = ["${aws_route53_record.private_hostname.*.name}",
  "${aws_route53_record.private_hostname.*.records}"]
}
