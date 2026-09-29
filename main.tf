resource "random_id" "example" {
  byte_length = 8
  count       = 6
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
  count            = 5
}

resource "random_pet" "example" {
  length    = 4
  separator = "-"
  count     = 5
}
