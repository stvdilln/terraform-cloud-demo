# This is the Bootstrap Job

There is a chicken and Egg problem here, we need to create the 
master job, that creates all the other jobs.  But how does that
job get created (at least for the first time).  And what
happens when that job modifies itself.  Hence this
workspace is cordoned off and intended to be run manually.

There is also the question of secrets.  In this simple demo
I am assuming/showing how to manage secrets without
Vault, or AWS KVM, or Azure Key Manager, or anything

The Absoulute simplest way to put secrets into Terraform Cloud
is to add them to this master job as terraform variables.
When this master job creates child jobs it can then give them
the secrets that they need.
Other methods of secret management would have each child job
pull secrets out of Vault (Etc) on each run.The secrets I am putting here are stored in a Hashicorp V
aultmaintained by hashicorp and are one way.  The normal warningabout not exposing secrets in your state file apply.Terraform cloud is based off of terraform enterprise, so the resources are tf