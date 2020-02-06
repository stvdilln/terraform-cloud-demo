# This creates the workspace demo1 which is somethign that you
# can run from the GUI in terraform cloud, or will run automatically
# on submits to the repo

# Set module name to the same as workspace_name
module ws-demo2 {
    # This doesn't need to change
    source = "../modules/create-workspace"

    # account-lifecycle-infra type-name
    workspace_name = "demo2"

    # The relative direcotory of the terraform code you want to run
    working_directory = "workspaces/demo2"

    #what branch do you want to run from?  When things are stable we
    #plan on running everything out of master.  But as you develop
    #new infrastructure you should be in a feature branch.  
    github_branch = "development"

 # Junk Pass through stuff.  Terrafrom doesn't allow modules to 
    # acess variables of the caller, so we need to explicitly
    # pass these to the module even though they will naver change
    # betwwen workspaces.
    oauth_token_id = var.oauth_token_id
    payg_subscription_client_secret = var.payg_subscription_client_secret
}