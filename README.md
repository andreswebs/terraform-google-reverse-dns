# tf-module-template

Creates both an `A` and a `PTR` DNS record for a given FQDN and IPv4 address.

[//]: # (BEGIN_TF_DOCS)


## Usage

Example:

```hcl

```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_reverse_ttl"></a> [dns\_reverse\_ttl](#input\_dns\_reverse\_ttl) | TTL for PTR record (reverse DNS) | `number` | `60` | no |
| <a name="input_dns_reverse_zone_name"></a> [dns\_reverse\_zone\_name](#input\_dns\_reverse\_zone\_name) | Name of the reverse DNS zone | `string` | `"internal-reverse"` | no |
| <a name="input_dns_ttl"></a> [dns\_ttl](#input\_dns\_ttl) | TTL for A record (DNS) | `number` | `60` | no |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Name of the DNS zone | `string` | `"internal"` | no |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | Fully-Qualified Domain Name (FQDN) | `string` | n/a | yes |
| <a name="input_ipv4_address"></a> [ipv4\_address](#input\_ipv4\_address) | IPv4 Address | `string` | n/a | yes |

## Modules

No modules.

## Outputs

No outputs.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 4.43 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4.43 |

## Resources

| Name | Type |
|------|------|
| [google_dns_record_set.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_record_set) | resource |
| [google_dns_record_set.this_reverse](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_record_set) | resource |

[//]: # (END_TF_DOCS)

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
