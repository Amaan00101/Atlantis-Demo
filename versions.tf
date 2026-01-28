terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket  = "atlantis-demo-tf-stateee-file"
    key     = "atlantis-demo/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}
