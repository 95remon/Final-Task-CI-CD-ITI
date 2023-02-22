resource "google_compute_subnetwork" "restricted" {
  name                     = "restricted"
  ip_cidr_range            = "10.0.0.0/18"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = "10.48.0.0/14"
  }
  secondary_ip_range {
    range_name    = "services"
    ip_cidr_range = "10.52.0.0/20"
  }
}


resource "google_compute_subnetwork" "management" {
  name          = "management"
  ip_cidr_range = "10.1.0.0/18"
  region        = "us-central1"
  network       = google_compute_network.main.self_link
}