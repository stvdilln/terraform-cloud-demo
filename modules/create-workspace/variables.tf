variable workspace_name {
    type = string
}
variable working_directory {
    type = string
}
variable trigger_prefixes {
    type = list
    default = []
}
variable subscription_name {
    type = string
}

variable org_name {
    default = "c6devops"
  
}
variable terraform_version {
    default = "0.12.20"
}


variable github_repo {
    default = "stvdilln/terraform-cloud-demo"
}
variable github_branch {
}
variable oauth_token_id {
    description = "From the Terraform Cloud Settings"
}


#
# Secrets that we can pass to child projects
#

variable root_ssh_public_key {}
variable payg_subscription_client_secret {}
variable root_password_all_machines {}
