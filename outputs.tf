
output "lambdas" {
  value = [{
    arn           = aws_lambda_function.cat_api.arn
    name          = aws_lambda_function.cat_api.function_name
    description   = aws_lambda_function.cat_api.description
    version       = aws_lambda_function.cat_api.version
    last_modified = aws_lambda_function.cat_api.last_modified
  }]
}