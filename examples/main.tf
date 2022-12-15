module "reverse_dns" {
  source                = "github.com/andreswebs/terraform-google-reverse-dns"
  dns_reverse_zone_name = var.dns_reverse_zone_name
  dns_zone_name         = var.dns_zone_name
  fqdn                  = "my-app.example.com"
  ipv4_address          = "10.1.0.7"
}