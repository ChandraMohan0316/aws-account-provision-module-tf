resource "aws_organizations_account" "account" {
  name                       = var.name
  email                      = var.email
  role_name                  = var.role_name
  parent_id                  = var.parent_id
  close_on_deletion          = var.close_on_deletion
  iam_user_access_to_billing = var.iam_user_access_to_billing

  lifecycle {
    ignore_changes = [role_name]
  }
}