resource "google_cloud_run_v2_service" "app_pareto-api" {
  name     = var.cloud_run_service_name
  location = var.region

  template {
    containers {
    # [REGION]-docker.pkg.dev/[PROJECT_ID]/[REPOSITORY_NAME]/[IMAGE_NAME]:[TAG]
      image = var.cloud_run_docker_image
    }
  }
}

resource "google_cloud_run_service_iam_binding" "public-access-iam-bind" {
  location = google_cloud_run_v2_service.app_pareto-api.location
  service  = google_cloud_run_v2_service.app_pareto-api.name
  role     = "roles/run.invoker"
  members = ["allUsers"]
}

resource "google_cloud_run_domain_mapping" "domain-mapping_pareto-api" {
  location = var.region
  name     = var.custom_domain_name

  metadata {
    namespace = var.project_id
  }

  spec {
    route_name = google_cloud_run_v2_service.app_pareto-api.name
  }
}