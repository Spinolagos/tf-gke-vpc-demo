## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | -------cluster------------# | `any` | n/a | yes |
| disk\_size | n/a | `any` | n/a | yes |
| image\_type | n/a | `any` | n/a | yes |
| initial\_node\_count | n/a | `any` | n/a | yes |
| location | n/a | `any` | n/a | yes |
| machine\_type | n/a | `any` | n/a | yes |
| master\_authorized\_networks\_cidr\_blocks | n/a | `list(map(string))` | `[]` | no |
| master\_ipv4\_cidr\_block | n/a | `any` | n/a | yes |
| max\_node\_count | n/a | `any` | n/a | yes |
| min\_master\_version | n/a | `any` | n/a | yes |
| min\_node\_count | n/a | `any` | n/a | yes |
| name\_node\_pool | -----NodePool----------# | `any` | n/a | yes |
| network | n/a | `any` | n/a | yes |
| node\_pools\_scopes | n/a | `list` | n/a | yes |
| preemptible | n/a | `any` | n/a | yes |
| project | n/a | `any` | n/a | yes |
| remove\_default\_node\_pool | n/a | `any` | n/a | yes |
| subnetwork | n/a | `any` | n/a | yes |
| tags | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| client\_certificate | n/a |
| client\_key | n/a |
| cluster\_ca\_certificate | n/a |
| endpoint | n/a |
| group\_urls | n/a |
| name | n/a |
| node\_config | n/a |
| node\_pool | n/a |

