terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }

  backend "s3" {
    profile = "terraform"
    bucket  = "devops-pucminas-0954839583"
    key     = "state/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }

}