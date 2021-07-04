locals {

  ip_filepath = "ips.json"

  common_tags = {
    Servie      = "AWS with Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Vinicius Rocha"
  }
}