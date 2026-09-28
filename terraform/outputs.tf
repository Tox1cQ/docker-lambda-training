output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.addition_lambda.repository_url
}

output "lambda_function_name" {
  description = "Lambda function name"
  value       = aws_lambda_function.addition_lambda.function_name
}

output "lambda_function_arn" {
  description = "Lambda function ARN"
  value       = aws_lambda_function.addition_lambda.arn
}

output "lambda_image_uri" {
  description = "Docker image used by Lambda"
  value       = aws_lambda_function.addition_lambda.image_uri
}

output "cloudwatch_log_group" {
  description = "CloudWatch log group"
  value       = aws_cloudwatch_log_group.addition_lambda.name
}
