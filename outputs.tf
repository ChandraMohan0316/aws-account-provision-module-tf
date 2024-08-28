output "arn" {
  description = "The ARN of the account"
  value       = aws_organizations_account.account.arn
}

output "id" {
  description = "The AWS account ID"
  value       = aws_organizations_account.account.id
}

output "status" {
  description = "The AWS account Status"
  value       = aws_organizations_account.account.status
}