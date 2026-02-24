output "lambda_name" {
  value = (
    lower(var.package_type) == "zip"
    ? aws_lambda_function.zip_csv_lambda[0].function_name
    : aws_lambda_function.image_lambda[0].function_name
  )
}

output "lambda_arn" {
  value = (
    length(aws_lambda_function.zip_csv_lambda) > 0 ?
    aws_lambda_function.zip_csv_lambda[0].arn :
    aws_lambda_function.image_lambda[0].arn
  )
}