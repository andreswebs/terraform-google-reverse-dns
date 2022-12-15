variable "fqdn" {
  type        = string
  description = "Fully-Qualified Domain Name (FQDN)"
}

variable "ipv4_address" {
  type        = string
  description = "IPv4 Address"

  validation {
    condition     = can(cidrnetmask("${var.ipv4_address}/32"))
    error_message = "Must be a valid IPv4 address."
  }

}

variable "dns_zone_name" {
  type        = string
  description = "Name of the DNS zone"
  default     = "internal"
}

variable "dns_reverse_zone_name" {
  type        = string
  description = "Name of the reverse DNS zone"
  default     = "internal-reverse"
}

variable "dns_ttl" {
  type        = number
  description = "TTL for A record (DNS)"
  default     = 60
}

variable "dns_reverse_ttl" {
  type        = number
  description = "TTL for PTR record (reverse DNS)"
  default     = 60
}
