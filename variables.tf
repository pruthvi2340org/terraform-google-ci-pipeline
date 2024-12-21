variable "project_id" {
  type        = string
  description = "The project ID where resources will be deployed."
}

variable "name" {
  type        = string
  description = "Name of the resource, used for various resources like the artifact registry."
}

variable "location" {
  type        = string
  description = "The region/location for Cloud resources."
}


############ GITHUB CONNECTION SETUP VARIABLES ####################
variable "connection_name" {
  type        = string
  description = "Name of the Cloud Build connection to GitHub."
}

variable "use_secret_manager" {
  type    = bool
  default = true
}

variable "secret_project_id" {
  type        = string
  description = "The project ID where the GitHub PAT secret will be stored."
}

variable "app_installation_id" {
  type        = number
  description = "GitHub App installation ID."
  sensitive = true
}

variable "github_pat_secret_name" {
  type        = string
  description = "The name of the Secret Manager secret for the GitHub PAT."
}

variable "github_secret" {
  type        = string
  description = "The GitHub Personal Access Token."
}

############## Cloud Build Tigger Variables##################

variable "repo_name" {
  type        = string
  description = "Name of the repository in Cloud Build."
}

variable "trigger_location" {
  type        = string
  default     = ""
  description = "Location of the Cloud Build trigger."
}

variable "repo_uri" {
  type        = string
  description = "The URI of the GitHub repository."
}

variable "service_account" {
  type        = string
  description = "Service account used for Cloud Build triggers."
}

variable "trigger_filename" {
  type        = string
  description = "The filename of the Cloud Build config file."
}

variable "ignored_files" {
  type        = list(string)
  default     = []
  description = "Files to ignore in the Cloud Build trigger."
}

variable "included_files" {
  type        = list(string)
  default     = []
  description = "Files to include in the Cloud Build trigger."
}

variable "trigger_name" {
  type        = string
  description = "Name of the Cloud Build trigger."
}

variable "disable_trigger" {
  type        = bool
  default     = false
  description = "Whether to disable the Cloud Build trigger."
}

variable "approval_required" {
  type        = bool
  default     = false
  description = "Whether approval is required for the Cloud Build trigger."
}

variable "pull_request" {
  type        = bool
  default     = false
  description = "Enable trigger on pull request event."
}

variable "push_event" {
  type        = bool
  description = "Enable trigger on push event."
  default     = true
}

variable "push_tag_event" {
  type        = bool
  default     = false
  description = "Enable trigger on tag push event."
}

variable "comment_control" {
  type        = string
  description = "Comment control setting for the Cloud Build trigger, specifying who can trigger builds with comments."
  default     = "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"
  validation {
    condition     = contains(["COMMENTS_ENABLED", "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY", "COMMENTS_DISABLED"], var.comment_control)
    error_message = "Valid values for comment_control are COMMENTS_ENABLED, COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY, and COMMENTS_DISABLED."
  }
}

variable "branch_regex_pattern" {
  type        = string
  default     = "^main$"
  description = "Regex pattern for branch to trigger builds on."
}

############## HCP VAULT VARIABLES ##################

variable "use_vault" {
  type    = bool
  description = "This will retrive secret from HVP vault secret or else pass the github pat via .env file"
  default = false
}

variable "hcp_project_id" {
  type        = string
  description = "To specify the project id of HCP"
  default     = ""
}

# variable "cloud_builds_list" {
#   type = map(object({
#     disabled          = bool
#     filename          = string
#     ignored_files     = list(string)
#     included_files    = list(string)
#     location          = string
#     substitutions     = map(string)
#     tags              = list(string)
#     approval_required = bool
#     repo_name         = string
#     #repo_owner        = string
#     tag_name          = string
#   }))
#   description = <<EOF
#         Example value {
#           "adservice" = {
#               disabled        = false
#               filename        = "cloud-build/adservice.yaml"
#               ignored_files  = []
#               included_files = []
#               location        = "us-central1"
#               substitutions   = {}
#               tags            = ["adservice"]
#               approval_required = false
#               repo_name       = "cloud-build"
#               tag_name        = ".*"
#             }
#           }
#         EOF
#   default     = {}
# }
