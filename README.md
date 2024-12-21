# This terraform can used by passing below inputs retail app

# Release 1.0.0
Description added with the inital requirements for CI

# Release 1.0.1
used to support multiple cloud builds trigger

# Release 1.0.2
Support for github integration events

# Release 1.0.3
Added integration with HCP vault to retrieve and store secret in secret manager

Pre-Requisites
```
roles/cloudbuild.connectionAdmin needed for the server account or to user account

1. [Install the Cloud Build GitHub App](https://github.com/apps/google-cloud-build)on your GitHub account or in an organization you own.

2. [Create a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

Make sure to set your token to have no expiration date and select the following permissions when prompted in GitHub: **repo** and **read:user**. If your app is installed in an organization, make sure to also select the read:org permission
```
```
module "ci_pipeline" {
  source  = "./modules/ci-pipeline-setup"

project_id             = ""
name                   = ""
location               = "us-central1"
github_pat_secret_name = "pruthvi2340org"
github_secret          = "<person-access-token>"
app_installation_id    = 56484305
connection_name        = "pruthvi2340org"
secret_project_id      = "burner-prus"
repo_name              = "retail-demo-app"
repo_uri               = "https://github.com/pruthvi2340org/retail-demo-app.git"
pull_request           = true
service_account        = "demo-366@burner-prus.iam.gserviceaccount.com"
disable_trigger        = false
approval_required      = false
included_files         = []
ignored_files          = []
trigger_filename       = "cloud-build/adservice.yaml"
trigger_name           = "ci-trigger"
comment_control        = "COMMENTS_ENABLED"
push_event             = false
push_tag_event         = false
  
}
```
# If you want to use vault to retrive secret set this as environment variable
```
HCP_CLIENT_ID="..."
HCP_CLIENT_SECRET="..."
```
# Mark use_vault to true to retrieve github pat and stores in secret manager
```
use_vault = true
```

# Run the command 
```
#!/bin/bash

source .env
terraform plan -var="app_installation_id=$GITHUB_APP_INSTALLATION_ID" -var="github_secret=$GITHUB_PAT"
terraform apply -var="app_installation_id=$GITHUB_APP_INSTALLATION_ID" -var="github_secret=$GITHUB_PAT"
```