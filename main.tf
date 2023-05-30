provider "aws" {
  alias  = "eu-west-2"
}

resource "aws_ami_copy" "default" {
  provider          = aws.eu-west-2
  count             = var.enabled ? 1 : 0
  name              = var.source_ami_name
  description       = "A copy of ${var.source_ami_name}"
  source_ami_id     = var.source_ami_id
  source_ami_region = var.source_ami_region

  tags = {
    Namespace       = var.namespace
    Environment     = var.environment
    Client          = var.client
    Stage           = var.stage
    Name            = var.source_ami_name
  }
}

resource "aws_ami_launch_permission" "default" {
  provider   = aws.eu-west-2
  count      = var.enabled ? length(var.account_ids_for_sharing) : 0
  image_id   = aws_ami_copy.default[0].id
  account_id = var.account_ids_for_sharing[count.index]
}