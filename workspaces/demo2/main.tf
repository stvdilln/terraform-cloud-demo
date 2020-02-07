output pub_key {
    # this is not a sensitive item, so just output it
    value = var.root_ssh_public_key
}
output aks_client_secret {
    # This is mared sensitive, so hopefully Terraform won't display it
    value = var.payg_subscription_client_secret
}