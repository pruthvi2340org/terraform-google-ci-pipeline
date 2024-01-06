# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "adservice" {
    disabled       = false
    filename       = "cloud-build/adservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-adservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "cartservice" {
    disabled       = false
    filename       = "cloud-build/cartservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-cartservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "checkoutservice" {
    disabled       = false
    filename       = "cloud-build/checkoutservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-checkoutservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "currencyservice" {
    disabled       = false
    filename       = "cloud-build/currencyservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-currencyservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "emailservice" {
    disabled       = false
    filename       = "cloud-build/emailservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-emailservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "frontend" {
    disabled       = false
    filename       = "cloud-build/frontend.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-frontend"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "loadgenerator" {
    disabled       = false
    filename       = "cloud-build/loadgenerator.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-loadgenerator"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "paymentservice" {
    disabled       = false
    filename       = "cloud-build/paymentservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-paymentservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

# google_cloudbuild_trigger.default:
resource "google_cloudbuild_trigger" "productcatalogservice" {
    disabled       = false
    filename       = "cloud-build/productcatalogservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-productcatalogservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

resource "google_cloudbuild_trigger" "recommendationservice" {
    disabled       = false
    filename       = "cloud-build/recommendationservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-recommendationservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}

resource "google_cloudbuild_trigger" "shippingservice" {
    disabled       = false
    filename       = "cloud-build/shippingservice.yaml"
    ignored_files  = []
    included_files = []
    location       = "global"
    name           = "${var.name}-shippingservice"
    substitutions  = {}
    tags           = []

    approval_config {
        approval_required = false
    }

    timeouts {}

    trigger_template {
        invert_regex = false
        project_id   = var.project_id
        repo_name    = var.repo_name
        tag_name     = ".*"
    }
}