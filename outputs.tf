output "dev_ips" { value = module.dev.instance_public_ips }
output "stg_ips" { value = module.stg.instance_public_ips }
output "prd_ips" { value = module.prd.instance_public_ips }
