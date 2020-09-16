# Terraform inputs and outputs.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| comment | A comment for the hosted zone | `string` | `"Managed by Terraform"` | no |
| force\_destroy | Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone | `string` | `false` | no |
| name | This is the name of the hosted zone | `string` | n/a | yes |
| parent\_zone\_id | Parent R53 hosted zone identifier | `any` | n/a | yes |
| tags | Additional tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | This is the name of the hosted zone |
| name\_servers | A list of name servers in associated (or default) delegation set |
| zone\_id | The Hosted Zone ID. This can be referenced by zone records |

