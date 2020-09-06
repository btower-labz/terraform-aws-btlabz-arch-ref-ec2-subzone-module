output "zone_id" {
  description = "The Hosted Zone ID. This can be referenced by zone records"
  value       = "${aws_route53_zone.subzone.zone_id}"
}

output "name_servers" {
  description = "A list of name servers in associated (or default) delegation set"
  value       = "${aws_route53_zone.subzone.name_servers}"
}

output "name" {
  description = "This is the name of the hosted zone"
  value       = "${aws_route53_zone.subzone.name}"
}
