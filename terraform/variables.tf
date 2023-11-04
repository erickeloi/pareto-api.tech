variable "project_id" {
    type = string
    default = "your-project-id"
}

variable "project_name" {
    type = string
    default = "your-project-name"
}

variable "credentials_path" {
    type=string
    default = "your/path/to/credentials"
}

variable "region" {
    type=string
    default = "us-east1"
}

variable "zone" {
    type=string
    default = "us-east1-a"
}

variable "gar_repository_id" {
    type=string
    default = "your-GAR-repo-id"
}

variable "cloud_run_service_name" {
    type=string
    default = "your-CR-svc-name"
}

variable "cloud_run_docker_image" {
    type=string
    # [REGION]-docker.pkg.dev/[PROJECT_ID]/[REPOSITORY_NAME]/[IMAGE_NAME]:[TAG]
    default = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "custom_domain_name" {
    type=string
    default = "example-domain.com"
}

variable "github_organization" {
    type=string
    default = "your-github-org"
}

variable "github_repo" {
    type=string
    default = "your-github-repo"
}

variable "cicd_service_account_id" {
    type=string
    default = "your-cicd-svc-acc-id"
}

variable "cicd_identity_pool_id" {
    type=string
    default = "ci-cd-pipeline-pool-prod"
}

variable "cicd_identity_provider_id" {
    type=string
    default = "ci-cd-oidc-identity-provider"
}