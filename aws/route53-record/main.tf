resource "aws_route53_record" "simple_www" {
  count = "${var.create_simple_record ? 1 : 0}"
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  records = var.records

}




resource "aws_route53_record" "alias_www" {
  count = "${var.create_alias_record ? 1 : 0}"

  zone_id = var.zone_id
  name    = var.name
  type    = var.type

  dynamic "alias" {
    for_each = var.alias
    content {
      name = lookup(alias.value, "name", null)
      zone_id = lookup(alias.value, "zone_id", null)
      evaluate_target_health = lookup(alias.value, "evaluate_target_health", null)
    }
  }

}