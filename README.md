## Requirements

IMPORTANT: Add to gke master firewall rules this ports: 8443,8080,9443,15017,15012 

| Name | Version |
|------|---------|
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
| ip\_cidr\_range | n/a | `string` | `"10.10.90.0/24"` | no |
| log\_config\_enable | n/a | `bool` | `false` | no |
| log\_config\_filter | n/a | `string` | `"ERRORS_ONLY"` | no |
| machine\_type | n/a | `string` | `"n1-standard-4"` | no |
| master\_authorized\_networks\_cidr\_blocks | n/a | `list` | <pre>[<br>  {<br>    "cidr_block": "1.1.1.1/32",<br>    "display_name": "ip mi casa"<br>  }<br>]</pre> | no |
| master\_ipv4\_cidr\_block\_int | n/a | `string` | `"10.10.80.0/28"` | no |
| max\_node\_count | n/a | `number` | `4` | no |
| min\_master\_version | n/a | `string` | `"1.16.9-gke.6"` | no |
| min\_node\_count | n/a | `number` | `2` | no |
| name\_node\_pool | n/a | `string` | `"default"` | no |
| nat\_ip\_allocate\_option | n/a | `string` | `"AUTO_ONLY"` | no |
| network\_name | Network | `string` | `"network"` | no |
| node\_pools\_scopes | n/a | `list` | <pre>[<br>  "https://www.googleapis.com/auth/compute",<br>  "https://www.googleapis.com/auth/monitoring.write",<br>  "https://www.googleapis.com/auth/logging.write",<br>  "https://www.googleapis.com/auth/monitoring"<br>]</pre> | no |
| preemptible | n/a | `string` | `"false"` | no |
| project | variables generales del proyecto | `string` | `"xxxx"` | no |
| region | n/a | `string` | `"us-east4"` | no |
| remove\_default\_node\_pool | n/a | `string` | `"true"` | no |
| router\_name | NAT | `string` | `"routername"` | no |
| router\_nat\_name | n/a | `string` | `"natname"` | no |
| source\_subnetwork\_ip\_ranges\_to\_nat | n/a | `string` | `"ALL_SUBNETWORKS_ALL_IP_RANGES"` | no |
| subnetwork\_name | n/a | `string` | `"subnet"` | no |
| tags | n/a | `list` | <pre>[<br>  "tag"<br>]</pre> | no |
| zone | n/a | `string` | `"us-east4-a"` | no |

## Outputs

No output.

