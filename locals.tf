
locals {
  lambdas_path = "${path.module}/"

  common_tags = {
    Project   = "Lambda Layers with Terraform"
    CreatedAt = formatdate("YYYY-MM-DD", timestamp())
    ManagedBy = "Terraform"
    Owner     = "Juan Carlos"
  }
}