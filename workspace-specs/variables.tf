variable organization_name {
    description = "The organization name in Terraform Cloud"
}
variable terraform_version {
    default = "0.12.20"
}
variable github_repo {
    default = "stvdilln/terraform-cloud-demo"
}
variable oauth_token_id {
    description = "From the Terraform Cloud Settings"
}

# Secrets avaiable to pass to infidivual workspaces

variable secret_bundle_1 {
    type = string
    description = "This is passed down form the master-workspace-creator, it is a map of secrets"
}
variable payg_subscription_client_secret {
    description = "AKS Client Secret Key"
}
