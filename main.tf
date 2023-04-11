terraform {
  required_version = "~> 1"

  required_providers {
    tfcoremock = {
      source  = "hashicorp/tfcoremock"
      version = "0.1.3"
    }
  }

  backend "local" {
    path = "state.tfstate"
  }
}

provider "tfcoremock" {
  use_only_state     = false
}