project_id             = "<project_id>"
name                   = "demo-app"
location               = "us-central1"
use_secret_manager     = false
use_vault              = true 
github_pat_secret_name = "org"
connection_name        = "org-con"
secret_project_id      = "<secret_project_id>"
repo_name              = "retail-demo-app"
repo_uri               = "https://github.com/<.owner_name.>/<.repo_name.>.git"
service_account        = "<svc-name>@<project_id>.iam.gserviceaccount.com"
disable_trigger        = false
approval_required      = false
included_files         = []
ignored_files          = []
trigger_filename       = "cloud-build/adservice.yaml"
trigger_name           = "ci-trigger"
comment_control        = "COMMENTS_ENABLED"
trigger_location       = "us-central1"
pull_request           = false
push_event             = true
push_tag_event         = false

# cloud_builds_list = {
#   "adservice" = {
#     disabled          = false
#     filename          = "cloud-build/adservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["adservice"]
#     approval_required = false
#     repo_name         = "pruthvi2340org/retail-demo-app"
#     tag_name          = ".*"
#   },
#   "cartservice" = {
#     disabled          = false
#     filename          = "cloud-build/cartservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["cartservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "checkoutservice" = {
#     disabled          = false
#     filename          = "cloud-build/checkoutservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["checkoutservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "currencyservice" = {
#     disabled          = false
#     filename          = "cloud-build/currencyservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["currencyservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "emailservice" = {
#     disabled          = false
#     filename          = "cloud-build/emailservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["emailservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "frontend" = {
#     disabled          = false
#     filename          = "cloud-build/frontend.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["frontend"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "loadgenerator" = {
#     disabled          = false
#     filename          = "cloud-build/loadgenerator.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["loadgenerator"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "paymentservice" = {
#     disabled          = false
#     filename          = "cloud-build/paymentservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["paymentservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "productcatalogservice" = {
#     disabled          = false
#     filename          = "cloud-build/productcatalogservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["productcatalogservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "recommendationservice" = {
#     disabled          = false
#     filename          = "cloud-build/recommendationservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["recommendationservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   },
#   "shippingservice" = {
#     disabled          = false
#     filename          = "cloud-build/shippingservice.yaml"
#     ignored_files     = []
#     included_files    = []
#     location          = "us-central1"
#     substitutions     = {}
#     tags              = ["shippingservice"]
#     approval_required = false
#     repo_name         = "retail-demo-app"
#     tag_name          = ".*"
#   }
# }