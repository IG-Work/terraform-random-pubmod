output "sample_random_ids" {
  description = "First three generated random IDs."
  value       = slice([for id in random_id.example : id.hex], 0, 3)
}

output "random_passwords" {
  description = "Generated random passwords."
  value       = [for p in random_password.password : p.result]
  sensitive   = true
}

output "random_pets" {
  description = "Generated random pet names."
  value       = [for pet in random_pet.example : pet.id]
}
