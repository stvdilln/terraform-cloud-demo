resource tfe_workspace workspace {
    name = var.workspace_name
    working_directory = var.working_directory
    trigger_prefixes = var.trigger_prefixes
    organization = var.org_name
    terraform_version = var.terraform_version
    queue_all_runs = false

    vcs_repo  {
        identifier = var.github_repo
        oauth_token_id = var.oauth_token_id
        branch = var.github_branch

    }
}

# Pass down the secrets from the Master-Workspace-Creator to 
# the job being created.
# This example is a bit simplistic in that all values are 
# passed down to created jobs.  Flags or modules could be 
# used to pass different sets of secrets to different jobs.
# You would have differnt ssh_pub_keys between dev and prod. 
# I don't want to confuse this demo with that level of 
# complexity.
resource tfe_variable ssh_pub_key {
   key = "root_ssh_public_key"
   value = var.root_ssh_public_key
   category = "terraform"
   # A public key should not be secret, the private key is the crown jewel.
   sensitive = false
   workspace_id = tfe_workspace.workspace.id
}
resource tfe_variable aks_client_secret {
   key = "payg_subscription_client_secret"
   value = var.payg_subscription_client_secret
   category = "terraform"
   # Try to NEver Reveal this in statefiles our output
   sensitive = true
   workspace_id = tfe_workspace.workspace.id
}
resource tfe_variable root_password_all_machines {
   key = "root_password_all_machines"
   value = var.root_password_all_machines
   category = "terraform"
   # Try to NEver Reveal this in statefiles our output
   sensitive = true
   workspace_id = tfe_workspace.workspace.id
}
