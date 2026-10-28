variable "region" {
  type    = string
  default = "us-east-2"
}
variable "my_ip_cidr" {
  type        = string
  description = "Your public IP with /32, allowed to SSH"
}
