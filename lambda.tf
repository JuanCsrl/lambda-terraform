data "archive_file" "cat_api_artefact" {
  output_path = "files/cat-api-artefact.zip"
  type        = "zip"
  source_dir  = "${local.lambdas_path}cat-api/"
}

resource "aws_lambda_function" "cat_api" {
  function_name = "cat_api"
  handler       = "lambda_function.lambda_handler"
  description   = "Gets a random cat image"
  role          = aws_iam_role.cat_api_lambda.arn
  runtime       = "python3.9"


  filename         = data.archive_file.cat_api_artefact.output_path
  source_code_hash = data.archive_file.cat_api_artefact.output_base64sha256

  timeout     = 5
  memory_size = 128

}

