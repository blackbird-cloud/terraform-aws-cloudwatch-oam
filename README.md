<!-- BEGIN_TF_DOCS -->
# Terraform Aws Cloudwatch Oam Module
Terraform module to create an AWS CloudWatch OAM

[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://blackbird.cloud)

## Example
```hcl
module "sink" {
  source  = "blackbird-cloud/cloudwatch-oam/aws"
  version = "~> 1"

  name            = "mysink"
  organization_id = "o-a1235"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5 |

## Resources

| Name | Type |
|------|------|
| [aws_oam_sink.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink) | resource |
| [aws_oam_sink_policy.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink_policy) | resource |
| [aws_caller_identity.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The Name of the Cloudwatch OAM sink. | `string` | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Your AWS Organization ID, used in the AWS Cloudwatch Sink Access policy to accept incoming Cloudwatch metrics and logs, and XRay traces. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sink"></a> [sink](#output\_sink) | The Cloudwatch OAM Sink |
| <a name="output_stackset_template"></a> [stackset\_template](#output\_stackset\_template) | The AWS Cloudformation Stackset template to use for creating AWS Cloudwatch OAM links. |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2025 [Blackbird Cloud](https://blackbird.cloud)
<!-- END_TF_DOCS -->