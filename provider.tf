# terraform configuration
terraform {

  required_providers {

    # vercel provider configuration
    vercel = {
      source  = "vercel/vercel"
      version = "0.14.0"
    }

  }

}


# provider configuration for vercel
provider "vercel" {

  api_token = "${var.api_token}"
}


