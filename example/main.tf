terraform {
  required_providers {
    petstore = {
      source  = "terraform-in-action/petstore"
      version = "~> 1.0"
    }
  }
}

provider "petstore" {
  address = "http://localhost:8000"
}

resource "petstore_pet" "my_pet" {
  name    = "snowball"
  species = "cat"
  age     = 8
}
