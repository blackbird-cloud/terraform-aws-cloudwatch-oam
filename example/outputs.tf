output "sink" {
  value       = module.sink.sink
  description = "The Cloudwatch OAM Sink"
}

output "stackset_template" {
  value       = module.sink.stackset_template
  description = "The AWS Cloudformation Stackset template to use for creating AWS Cloudwatch OAM links."
}
