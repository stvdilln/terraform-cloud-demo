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
variable testvalues {
    type = string
    description = "testing"
}
variable testvalues {
    type = map
    description = "This is passed down form the master-workspace-creator, it is a map of secrets"
}
