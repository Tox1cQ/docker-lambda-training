resource "aws_cloudwatch_log_group" "addition_lambda" {
  name              = "/aws/lambda/${var.lambda_function_name}"
  retention_in_days = var.log_retention_days
}

resource "aws_lambda_function" "addition_lambda" {
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_execution.arn
  package_type  = "Image"

  image_uri = "${aws_ecr_repository.addition_lambda.repository_url}:${var.image_tag}"

  timeout     = 30
  memory_size = 128

  depends_on = [
    aws_iam_role_policy_attachment.lambda_basic_execution,
    aws_cloudwatch_log_group.addition_lambda
  ]
}
