terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "AWS-Architet-org"

		workspaces {
			name = "Test-workspace"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}