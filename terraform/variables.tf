variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "addition-lambda-function"
}

variable "ecr_repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "addition-lambda"
}

variable "image_tag" {
  description = "Docker image tag for Lambda"
  type        = string
  default     = "1.0"
}

variable "log_retention_days" {
  description = "CloudWatch log retention in days"
  type        = number
  default     = 14
}
