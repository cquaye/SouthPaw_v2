
# ---- or iowa----

resource "google_compute_router" "iowa-router" {
  name    = "iowa-router"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "iowa-router-02" {
  name    = "iowa-route-02"
  region  = "us-central1"
  network = google_compute_network.main.id
}


# ---- for tokyo ---

resource "google_compute_router" "tokyo-router-01" {
  name    = "tokyo-router"
  region  = "asia-northeast1"
  network = google_compute_network.batman.id
}

resource "google_compute_router" "tokyo-router-02" {
  name    = "tokyo-router-02"
  region  = "asia-northeast1"
  network = google_compute_network.batman.id
}

# --- for saopaulo ---

resource "google_compute_router" "saopaulo-router-01" {
  name    = "saopaulo-router-01"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "saopaulo-router-02" {
  name    = "saopaulo-router-02"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}