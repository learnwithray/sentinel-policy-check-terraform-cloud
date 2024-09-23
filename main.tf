resource "google_cloud_run_v2_service" "default" {
  name= "hello-1"
  location = "us-central1"
  project  = "burner-mansaini"
  # ingress = "INGRESS_TRAFFIC_INTERNAL_ONLY"
  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }
}

# resource "google_cloud_run_v2_service_iam_member" "noauth" {
#   name   = google_cloud_run_v2_service.default.name
#   location = google_cloud_run_v2_service.default.location
#   project  = "burner-mansaini"
#   role     = "roles/run.invoker"
#   member   = "allUsers"
# }

# terraform import google_cloud_run_v2_service.default projects/burner-mansaini/locations/us-central1//services/hello
