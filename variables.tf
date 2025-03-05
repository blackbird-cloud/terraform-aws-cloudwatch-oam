variable "name" {
  type        = string
  description = "The Name of the Cloudwatch OAM sink."
}

variable "organization_id" {
  type        = string
  description = "Your AWS Organization ID, used in the AWS Cloudwatch Sink Access policy to accept incoming Cloudwatch metrics and logs, and XRay traces."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  default     = {}
}

variable "shared_resources" {
  type        = list(string)
  description = "List of data resources to be shared"
  default = [
    "AWS::Logs::LogGroup",
    "AWS::CloudWatch::Metric",
    "AWS::XRay::Trace"
  ]
}
