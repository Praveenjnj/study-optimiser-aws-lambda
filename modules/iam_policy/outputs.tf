output "iam_policy_name" {
    description = "name for IAM policy"
    value = aws_iam_policy.iam_policy.name
}

output "iam_policy_arn" {
    description = "arn for IAM policy"
    value = aws_iam_policy.iam_policy.arn
}

