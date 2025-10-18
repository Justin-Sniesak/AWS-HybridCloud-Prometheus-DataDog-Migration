#Downloads the plugin from the Hashicorp registry
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.17.0" # This is the newest version as of 10162025
    }
  }
}
#Specifies the region 
provider "aws" {
  region = "us-west-2" 
}