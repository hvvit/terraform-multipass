terraform {
  required_providers {
    multipass = {
      source  = "larstobi/multipass"
      version = "1.3.2"
    }
  }
}

provider "multipass" {}