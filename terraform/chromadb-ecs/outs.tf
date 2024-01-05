output "chroma_base_url" {
  value = aws_api_gateway_deployment.chroma_api.invoke_url
}

output "apigw_loggroup_name" {
  value = "API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.chroma_api.id}/${aws_api_gateway_deployment.chroma_api.stage_name}"
}

output "api_key_secret_arn" {
  value = aws_ssm_parameter.api_key_secret.arn
}
