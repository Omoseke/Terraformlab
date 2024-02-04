terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "vscode"

}


#Create a VPC Resource block

resource "aws_vpc" "myVpc" {
  cidr_block = "10.0.0.0/16"
}
