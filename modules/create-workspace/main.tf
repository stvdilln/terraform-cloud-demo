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

