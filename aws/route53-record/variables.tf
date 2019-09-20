variable "zone_id" {}

variable "name" {}

variable "type" {
  default = "A"
}
variable "ttl" {
  default = "300"
}
variable "records" {
  type = "list"
  default = []
}

variable "create_simple_record" {
  default = false
}

variable "create_alias_record" {
  default = false
}

variable "alias" {
  type = any
  default = []
}