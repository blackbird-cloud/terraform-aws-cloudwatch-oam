output "sink" {
  value       = aws_oam_sink.default
  description = "The Cloudwatch OAM Sink"
}

output "shared_resources" {
  value       = var.shared_resources
  description = "List of data resources to be shared"
}

output "stackset_template" {
  value = templatefile("${path.module}/stackset.tmpl", {
    account_id = data.aws_caller_identity.default.account_id
    sink_arn   = aws_oam_sink.default.arn
  })
  description = "The AWS Cloudformation Stackset template to use for creating AWS Cloudwatch OAM links."
}
