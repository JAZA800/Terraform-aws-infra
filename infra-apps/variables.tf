variable "env" { type = string }
variable "bucket_name" { type = string }
variable "instance_count" { type = number }
variable "instance_type" { type = string }
variable "hash_key" { type = string }
variable "public_key" { type = string }
variable "ssh_cidr" { type = string }
variable "root_volume_size" {
  type    = number
  default = 10
}
