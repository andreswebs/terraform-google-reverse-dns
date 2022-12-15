locals {
  reverse_dns_domain = "in-addr.arpa."
  reverse_address    = "${join(".", reverse(split(".", var.ipv4_address)))}.${local.reverse_dns_domain}"
  fqdn               = "${replace(var.fqdn, "/\\.*$/", "")}."
}

resource "google_dns_record_set" "this" {
  name         = local.fqdn
  type         = "A"
  ttl          = var.dns_ttl
  managed_zone = var.dns_zone_name
  rrdatas      = [var.ipv4_address]
}

resource "google_dns_record_set" "this_reverse" {
  name         = local.reverse_address
  type         = "PTR"
  ttl          = var.dns_reverse_ttl
  managed_zone = var.dns_reverse_zone_name
  rrdatas      = [local.fqdn]
}
