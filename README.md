# terraform-gke-vpc
## Requirements

| Name | Version |
|------|---------|
| azurerm | 1.35 |
| gitlab | 2.10.0 |
| google | 3.1 |

## Providers

| Name | Version |
|------|---------|
| google | 3.1 |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | GKE de integración | `string` | `"gke-name"` | no |
| disk\_size | n/a | `number` | `100` | no |
| enable\_google | n/a | `bool` | `true` | no |
| image\_type | n/a | `string` | `"COS"` | no |
| initial\_node\_count | n/a | `number` | `2` | no |
| machine\_type | n/a | `string` | `"n1-standard-4"` | no |
| master\_authorized\_networks\_cidr\_blocks | n/a | `list` | <pre>[<br>  {<br>    "cidr_block": "1.1.1.1/32",<br>    "display_name": "ip mi casa"<br>  }<br>]</pre> | no |
| master\_ipv4\_cidr\_block\_int | n/a | `string` | `"10.10.80.0/28"` | no |
| max\_node\_count | n/a | `number` | `4` | no |
| min\_master\_version | n/a | `string` | `"1.16.9-gke.6"` | no |
| min\_node\_count | n/a | `number` | `2` | no |
| name\_node\_pool | n/a | `string` | `"default"` | no |
| network\_name | Network | `string` | `"network"` | no |
| node\_pools\_scopes | n/a | `list` | <pre>[<br>  "https://www.googleapis.com/auth/compute",<br>  "https://www.googleapis.com/auth/monitoring.write",<br>  "https://www.googleapis.com/auth/logging.write",<br>  "https://www.googleapis.com/auth/monitoring"<br>]</pre> | no |
| preemptible | n/a | `string` | `"false"` | no |
| project | variables generales del proyecto | `string` | `"xxxx"` | no |
| region | n/a | `string` | `"us-east4"` | no |
| remove\_default\_node\_pool | n/a | `string` | `"true"` | no |
| subnetwork\_name | n/a | `string` | `"subnet"` | no |
| tags | n/a | `list` | <pre>[<br>  "tag"<br>]</pre> | no |
| zone | n/a | `string` | `"us-east4-a"` | no |

## Outputs

No output.

