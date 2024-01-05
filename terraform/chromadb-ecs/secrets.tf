resource "aws_ssm_parameter" "api_key_secret" {
  name = "chromadb_web_api_key"
  type = "SecureString"
  value = aws_api_gateway_api_key.api_key.value
}

resource "aws_ssm_parameter" "otel_configuration" {
  name = "otel_configuration"
  type = "SecureString"
  value = file("../otel-configuration.yml")
}