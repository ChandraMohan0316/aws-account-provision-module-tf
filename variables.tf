variable "email" {
  type        = string
  description = "Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account"
}

variable "name" {
  type        = string
  description = "(Required) Friendly name for the member account"
}

variable "close_on_deletion" {
  type        = bool
  description = "(Optional) If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts."
  default     = true
}

variable "iam_user_access_to_billing" {
  type        = string
  description = "If set to ALLOW, the new account enables IAM users and roles to access account billing information if they have the required permissions"
  default     = "ALLOW"
  validation {
    condition = anytrue([
      var.iam_user_access_to_billing == "ALLOW",
      var.iam_user_access_to_billing == "DENY",
    ])
    error_message = "The iam_user_access_to_billing must be one of ALLOW, or DENY."
  }
}

variable "parent_id" {
  type        = string
  description = "Parent Organizational Unit ID or Root ID"
  default     = ""
}

variable "role_name" {
  type        = string
  description = "The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role"
  default     = "member-account-role"
}