resource "aws_iam_policy" "iam_policy" {
  name        = var.policy_name
  description = var.policy_description

  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = var.policy_statements
  })

  tags = var.tags
}