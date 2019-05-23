variable "compartment_id" {}

variable "display_name" {
  default = "_lb"
}

variable "shape" {
  default = "100Mbps"
}

variable "lb_subnet_ids" {
  default = []
}

variable "lb_is_private" {
  default = "false"
}

variable "lb_detail" {
  default = "full"
}

variable "lb_backEndSet_name" {
  default = "_backEndSet"
}

variable "_lb_id" {}

variable "policy" {
  default = "ROUND_ROBIN"
}

variable "lb_health_checker" {
  default = {
    health_checker {
      port                = "80"
      protocol            = "HTTP"
      response_body_regex = ".*"
      url_path            = "/"
    }
  }
}
