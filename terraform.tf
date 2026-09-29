terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.7.1"
    }
  }
}

provider "random" {}

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

output "sample_random_ids" {
  value = slice([for id in random_id.example : id.hex], 0, 3)
}

output "random_passwords" {
  value     = [for p in random_password.password : p.result]
  sensitive = true
}

output "random_pets" {
  value = [for pet in random_pet.example : pet.id]
}
