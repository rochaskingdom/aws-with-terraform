locals {
  has_domain       = var.domain != ""
  domain           = local.has_domain ? var.domain : random_pet.website.id

  common_tags = {
    Project   = "AWS with Terraform"
    Service   = "Static Website"
    CreatedAt = "2021-07-04"
  }
}
