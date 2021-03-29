terraform {
    required_providers {
      digitalocean = {
          source = "digitalocean/digitalocean",
          version = "2.6.0"
      }
    }
}

provider "digitalocean" {
  token = var.dotoken
}

data "digitalocean_ssh_key" "terraform-ci" {
  name = "terraform-ci"
}