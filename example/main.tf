module "sink" {
  source  = "blackbird-cloud/cloudwatch-oam/aws"
  version = "~> 1"

  name            = "my-sink"
  organization_id = "o-a1234"
}
