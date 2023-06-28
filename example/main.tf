module "sink" {
  source  = "blackbird-cloud/cloudwatch-oam/aws"
  version = "~> 1"

  name            = "mysink"
  organization_id = "o-a1235"
}
