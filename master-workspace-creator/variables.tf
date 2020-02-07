variable organization_name {
    description = "The name of the organization you created in Terraform Cloud."
}
variable oauth_token_id {
    description = "oauth_token_id:  Go into terraform cloud site, Organization-> Settings-> VCS Providers and provide the Oauth Token ID"
}
variable tfe_token {
    description = "Token to Log into Terraform Cloud.  Goto https://app.terraform.io/app/settings/tokens and genrate a token."
}

#
# These are demonstration secrets that we put into the Job Creator Job
# It allows the job creator to pass out secrets to jobs it creates. 
# 
variable payg_subscription_client_secret {
    description = "AKS Client Secret Key"
}
