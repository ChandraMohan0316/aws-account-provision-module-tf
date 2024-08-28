# create-account-module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | (Optional) If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts. | `bool` | `true` | no |
| <a name="input_email"></a> [email](#input\_email) | Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account | `string` | n/a | yes |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | If set to ALLOW, the new account enables IAM users and roles to access account billing information if they have the required permissions | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Friendly name for the member account | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | Parent Organizational Unit ID or Root ID | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role | `string` | `"member-account-role"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
