-variable workspace_name {
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
    default = "0.12.8"
}


variable github_repo {
    default = "stvdilln/terraform-cloud-demo"
}
variable github_branch {
    default = "master"
}



variable SSH_PUB_KEY {
    default = "ssh-rsa thisIsTotalJunk11/leKA5/sbqtiuBvEmz9LPNFkOE5crS7pe90Hw8uWOuwwbxCl1KLOxHKoinAMfJEN4gb9088TBTjiJiZ6F/+mwgsxHOJFYI1iSh59AKxuCRAYsEhbSoJiLlndNSDjtUdUhCUrMbvvHKMYyzb1uBPc/bNnVkwpDmm5LNMrQRUvBahFV9ndkqWWAfcJd23EMSMjg8tocaBgS6brIYGKDvXIoF7Sxq5OZVS/9+Mcfq2XwZYfvwkM4m1gKx4/PF7trn3S3iSa1M+jGsFZO1oSpu4kFDfxFNSMx+MteFcW9BWFMY2Hd5CsAlP3jDxjVcBFkVKdZ C6 DevOps"
}

variable oauth_token_id {
    description = "From the Terraform Cloud Settings"
}
variable payg_subscription_client_secret {}
