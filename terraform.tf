terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" // specifies a hostname (optional), namespace, and provider name.
      version = "~> 5.92"       // sets a version constraint for your AWS provider. defaults to the most recent version of the provider.
    }
  }

  required_version = ">= 1.2"

}
