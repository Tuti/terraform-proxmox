variable "pve_endpoint" { type = string }
variable "pve_api_token" { type = string, sensitive = true }
variable "target_node" { type = string, default = "pve" }
variable "template_id" { type = number } #cloud-init VMID
variable "gateway" { type = string }

 