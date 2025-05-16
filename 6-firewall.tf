# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall


# ---FW for main ---
# ----This is for web ---
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# ----- This is for icmp -------
resource "google_compute_firewall" "allow-icmp" {
  name    = "allow-icmp"
  network = google_compute_network.main.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}


#----This is for rdp ----
resource "google_compute_firewall" "rdp" {
  name    = "rdp"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}


#---This is for DB ---
resource "google_compute_firewall" "allow-db" {
  name    = "allow-db"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["3306", "1521"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# ----FW rules for batmaan ----
# ----This is for web ---
resource "google_compute_firewall" "batman-ssh" {
  name    = "batman-ssh"
  network = google_compute_network.batman.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "batman-http" {
  name    = "batman-http"
  network = google_compute_network.batman.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# ----- This is for icmp -------
resource "google_compute_firewall" "batman-icmp" {
  name    = "batman-icmp"
  network = google_compute_network.batman.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}


#----This is for rdp ----
resource "google_compute_firewall" "batman-rdp" {
  name    = "batman-rdp"
  network = google_compute_network.batman.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}


#---This is for DB ---
resource "google_compute_firewall" "batman-db" {
  name    = "batman-db"
  network = google_compute_network.batman.name

  allow {
    protocol = "tcp"
    ports    = ["3306", "1521"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# ----FW rules for irnman ----
# ----This is for web ---
resource "google_compute_firewall" "ironman-ssh" {
  name    = "ironman-ssh"
  network = google_compute_network.ironman.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "ironman-http" {
  name    = "ironman-http"
  network = google_compute_network.ironman.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# ----- This is for icmp -------
resource "google_compute_firewall" "ironman-icmp" {
  name    = "ironman-icmp"
  network = google_compute_network.ironman.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}


#----This is for rdp ----
resource "google_compute_firewall" "ironman-rdp" {
  name    = "ironman-rdp"
  network = google_compute_network.ironman.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}


#---This is for DB ---
resource "google_compute_firewall" "ironman-db" {
  name    = "ironman-db"
  network = google_compute_network.ironman.name

  allow {
    protocol = "tcp"
    ports    = ["3306", "1521"]
  }

  source_ranges = ["0.0.0.0/0"]
}