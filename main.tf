data "aws_route53_zone" "parent" {
  zone_id = var.parent_zone_id
}

locals {
  subzone_name = format("%s.%s", var.name, data.aws_route53_zone.parent.name)
}

resource "aws_route53_zone" "subzone" {
  name          = local.subzone_name
  comment       = var.comment
  force_destroy = var.force_destroy
  tags = merge(
    var.tags,
    {
      "Name" = local.subzone_name
    },
  )
}

resource "aws_route53_record" "parent" {
  zone_id = data.aws_route53_zone.parent.zone_id
  # Short name
  name    = var.name
  type    = "NS"
  ttl     = "60"
  records = aws_route53_zone.subzone.name_servers
}
