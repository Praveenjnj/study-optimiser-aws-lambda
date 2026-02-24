output "role_arn" {
  description = "ARN of the IAM role for Lambda"
  value = aws_iam_role.iam_role.arn 
}

output "role_name" {
  description = "ID for the IAM role for Lambda"
  value = aws_iam_role.iam_role.name
}