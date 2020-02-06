resource tfe_workspace workspace {
    name = "Master-Workspace-Creator"
    working_directory = "workspace-specs"
    # Do not trigger on specific folders for this job
    file_triggers_enabled = false
    organization = var.organization_name
    terraform_version = "0.12.20"
    #queue_all_runs = false

    vcs_repo  {
        identifier = "stvdilln/terraform-cloud-demo"
        oauth_token_id = var.oauth_token_id
        branch = "development"

    }
}
resource tfe_variable organziation_name {
   key = "organization_name"
   value = var.organization_name
   category = "terraform"
   # A public key should not be secret, the private key is the crown jewel.
   sensitive = false
   workspace_id = tfe_workspace.workspace.id
}
resource tfe_variable oauth_token_id {
   key = "oauth_token_id"
   value = var.oauth_token_id
   category = "terraform"
   # A public key should not be secret, the private key is the crown jewel.
   sensitive = false
   workspace_id = tfe_workspace.workspace.id
}


# Add the secrets that the job creator needs to pass to child jobs


# resource tfe_variable ssh_pub_key {
#    key = "root_ssh_public_key"
#    value = var.root_ssh_public_key
#    category = "terraform"
#    # A public key should not be secret, the private key is the crown jewel.
#    sensitive = false
#    workspace_id = tfe_workspace.workspace.id
# }
# resource tfe_variable aks_client_secret {
#    key = "payg_subscription_client_secret"
#    value = var.payg_subscription_client_secret
#    category = "terraform"
#    # Try to NEver Reveal this in statefiles our output
#    sensitive = true
#    workspace_id = tfe_workspace.workspace.id
# }
# resource tfe_variable root_password_all_machines {
#    key = "root_password_all_machines"
#    value = var.root_password_all_machines
#    category = "terraform"
#    # Try to NEver Reveal this in statefiles our output
#    sensitive = true
#    workspace_id = tfe_workspace.workspace.id
# }
resource tfe_variable testvalues {
   key = "testvalues"
   hcl = false
   value = file("test.hcl")
   category = "terraform"
   # Try to NEver Reveal this in statefiles our output
   sensitive = false
   workspace_id = tfe_workspace.workspace.id
}
