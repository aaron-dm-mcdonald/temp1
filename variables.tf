

resource "random_pet" "prefix" {
  length    = 4
  separator = "-"
}

resource "random_integer" "suffix" {
  min = 1
  max = 999
}

#for isolating errors and testing
locals {
  index = "${random_pet.prefix.id}-${random_integer.suffix.result}"
}

#for isolating errors and testing
output "index" {
  value = local.index
}
