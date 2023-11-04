module "gh_oidc" {
source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
project_id  = var.project_id
pool_id     = var.cicd_identity_pool_id
provider_id = var.cicd_identity_provider_id
sa_mapping = {
"${var.cicd_service_account_id}" = {
  sa_name   = "projects/${var.project_id}/serviceAccounts/${var.cicd_service_account_id}@${var.project_id}.iam.gserviceaccount.com"
  attribute = "attribute.repository/${var.github_organization}/${var.github_repo}"
}
}
}
