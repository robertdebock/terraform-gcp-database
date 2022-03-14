resource "google_sql_database" "default" {
  name     = "my-database"
  instance = google_sql_database_instance.default.name
}

resource "google_sql_database_instance" "default" {
  database_version    = var.database_version
  deletion_protection = false
  name                = "my-database-instance"
  region              = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}
