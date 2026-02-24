output "event_rule_arn" {
  description = "ARN of the EventBridge rule"
  value = aws_cloudwatch_event_rule.event_rule.arn
}

output "event_target_id" {
    description = "ID of the EventBridge target"
    value = aws_cloudwatch_event_target.event_target.id
  
}