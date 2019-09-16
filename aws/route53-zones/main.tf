resource "aws_route53_zone" "zone" {
  name = var.zone_name
  comment = var.comment

  tags = var.tags
}