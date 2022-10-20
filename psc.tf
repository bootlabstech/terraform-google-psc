resource "google_compute_global_address" "default" {
  address       = var.address
  address_type  = var.address_type
  name          = var.address_name
  network       = var.network
  prefix_length = var.subnet_mask
  project       = var.project_id
  purpose       = var.purpose
}
resource "google_service_networking_connection" "psc" {
  depends_on              = [google_compute_global_address.default]
  network                 = var.network
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = concat(var.ranges, [google_compute_global_address.default.name])
}