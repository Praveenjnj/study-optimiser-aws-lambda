resource "aws_cloudwatch_log_group" "this" {
    name =var.log_group_name
    retention_in_days = var.log_retention_in_days
    kms_key_id =var.kms_key_id
    log_group_class = var.log_group_class

    tags = var.tags

    lifecycle {
      create_before_destroy = true
    }
}

  
