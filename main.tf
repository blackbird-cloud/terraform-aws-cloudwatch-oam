data "aws_caller_identity" "default" {}

resource "aws_oam_sink" "default" {
  name = var.name
  tags = var.tags
}

resource "aws_oam_sink_policy" "default" {
  sink_identifier = aws_oam_sink.default.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "oam:CreateLink",
          "oam:UpdateLink"
        ]
        Effect    = "Allow"
        Resource  = "*"
        Principal = "*"
        Condition = {
          "ForAllValues:StringEquals" = {
            "oam:ResourceTypes" = [
              "AWS::Logs::LogGroup",
              "AWS::CloudWatch::Metric",
              "AWS::XRay::Trace"
            ]
          }
          "ForAnyValue:StringEquals" : {
            "aws:PrincipalOrgID" : "${var.organization_id}"
          }
        }
      }
    ]
  })
}
