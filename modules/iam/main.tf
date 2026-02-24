resource "aws_iam_role" "iam_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        service = "${var.aws_service_name}"
      }
    }]
  })

  tags = var.tags
}
