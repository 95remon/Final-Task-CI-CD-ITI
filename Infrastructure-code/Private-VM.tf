resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "e2-small"
  zone         = "us-central1-a"
  

   boot_disk {

    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = google_compute_network.main.name
    subnetwork = google_compute_subnetwork.management.name
  }

  
}
